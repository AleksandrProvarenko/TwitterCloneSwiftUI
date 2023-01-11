//
//  AuthentificationHeaderView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 06.01.2023.
//

import SwiftUI

struct AuthentificationHeaderView: View {
    
    let firstTitle: String
    let secondTitle: String
    
    var body: some View {
        VStack {
            // header view
            VStack(alignment: .leading) {
                HStack { Spacer() }
                Text(firstTitle)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(secondTitle)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
            .frame(height: 260)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
        }
    }
}

struct AuthentificationHeader_Previews: PreviewProvider {
    static var previews: some View {
        AuthentificationHeaderView(firstTitle: "Hello.",
                                   secondTitle: "Welkome Back")
    }
}
