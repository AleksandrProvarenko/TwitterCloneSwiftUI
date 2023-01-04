//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 04.01.2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 25) {
            HStack(spacing: 5 ) {
                Text("300")
                    .font(.subheadline)
                    .bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 5) {
                Text("800")
                    .font(.subheadline)
                    .bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.top, 2)
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
