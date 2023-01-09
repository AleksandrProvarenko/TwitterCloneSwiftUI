//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 04.01.2023.
//

import SwiftUI

struct SideMenuView: View {
    
    @EnvironmentObject var authViewModel: AuthViewMidel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 3) {
                    Text("Bruce Wayne")
                        .font(.subheadline)
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        authViewModel.signUot()
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }

                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
            }
            
            Spacer()
        }
    }
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
