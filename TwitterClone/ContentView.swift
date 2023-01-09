//
//  ContentView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 03.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewMidel
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LogInView()
            } else {
                mainInterfaceView
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentView()
            }
        }
    }

extension ContentView {
    var mainInterfaceView: some View {
        ZStack(alignment: .topLeading) {
            MainTabBarView()
                .navigationBarHidden(showMenu)
            
            if showMenu {
                ZStack {
                    Color(.black).opacity(0.25)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0: -300, y: 0)
                .background(showMenu ? Color.white : Color.clear)
        }
        .navigationTitle("home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 35, height: 35)
                }
            }
        }
        .onAppear {
            showMenu = false
        }
    }
}
