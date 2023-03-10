//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 04.01.2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 3){
                Text("Joker")
                    .foregroundColor(.black)
                    .font(.subheadline)
                    .bold()
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
