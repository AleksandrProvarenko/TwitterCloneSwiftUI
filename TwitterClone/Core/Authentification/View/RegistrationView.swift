//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 06.01.2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewMidel
    
    var body: some View {
        VStack {
            // header view
            AuthentificationHeaderView(firstTitle: "Get started",
                                       secindTitle: "Create your a ccount")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $email)
                
                CustomInputField(imageName: "person",
                                 placeholderText: "User name",
                                 text: $userName)
                
                CustomInputField(imageName: "person",
                                 placeholderText: "Full name",
                                 text: $fullName)
                
                CustomInputField(imageName: "lock",
                                 placeholderText: "Password",
                                 text: $password)
            }
            .padding(35)
            
            Button {
                viewModel.register(withEmail: email,
                                   password: password,
                                   fullName: fullName,
                                   userName: userName)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Alreadu have an account?")
                        .font(.caption)
                    Text("Sign In")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 30)
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
