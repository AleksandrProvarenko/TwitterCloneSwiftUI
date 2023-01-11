//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 10.01.2023.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack {
            AuthentificationHeaderView(firstTitle: "Setup youre account",
                                       secondTitle: "Add a profile photo")
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                } else {
                    Image("addPhoto")
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                }
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(selectedImage: $selectedImage)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemBlue))
            .scaledToFill()
            .foregroundColor(.blue)
            .frame(width: 200, height: 200)
            .padding(.top, 45)
            .clipShape(Circle())
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
