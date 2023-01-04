//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 04.01.2023.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
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
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack {
                    Image(systemName: option.imageName)
                    Text(option.title)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
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
