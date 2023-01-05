//
//  SideMenuOptionRowView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 05.01.2023.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
