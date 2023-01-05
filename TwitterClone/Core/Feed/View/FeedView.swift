//
//  Feed.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 03.01.2023.
//

import SwiftUI

struct FeedView: View {
    
    @State private var ShowNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                       TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                ShowNewTweetView.toggle()
            } label: {
                Image("createPost")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 35, height: 35)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $ShowNewTweetView) {
                Text("New Tweet view...")
            }
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
