//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 03.01.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userInfoDetails
            tweetFilterBar
            tweetView
           
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: .zero , y: 5)
                }

                Circle()
                    .frame(width: 80, height: 80)
                .offset(x: 20, y: 32)
            }
        }
        .frame(height: 110)
    }
    
    var actionButtons: some View {
        HStack(spacing: 15) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(8)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.50))
            
            Button {
                //
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 30)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text("Heath Ledher")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill").foregroundColor(Color(.systemBlue))
            }
            
            Text("@juker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Yore moms favorite villains")
                .font(.subheadline)
            
            HStack(spacing: 25) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gothem, NY")
                }
                
                HStack {
                    Image(systemName: "link")
                    Text("www.thejiker.com")
                }
            }
            
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.vertical)
            
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
        }
        .padding(.horizontal)
    }
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold: .regular)
                        .foregroundColor(selectedFilter == item ? .black: .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeOut) {
                        self.selectedFilter = item
                    }
                }
            }
            .padding(.top)
        }
        .overlay(Divider().offset(x: 0, y: 20))
    }
    
    var tweetView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}
