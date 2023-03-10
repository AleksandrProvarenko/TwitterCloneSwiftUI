//
//  ExploreView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 03.01.2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(1...20, id: \.self) { _ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
