//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 03.01.2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color(.systemBlue))
                
                // user inafo & tweet caption
                VStack(alignment: .leading, spacing: 4){
                    // user info
                    HStack {
                        Text("Bruse Wyne")
                            .font(.subheadline).bold()
                        
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    // tweet caption
                    Text("I believe in Harvey Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // action buttons
            HStack {
                Button {
                    // action goes here...
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                Button {
                    // action goes here...
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                }
                
                Spacer()
                Button {
                    // action goes here...
                } label: {
                    Image(systemName: "heart")
                }
                
                Spacer()
                Button {
                    // action goes here...
                } label: {
                    Image(systemName: "bookmark")
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
