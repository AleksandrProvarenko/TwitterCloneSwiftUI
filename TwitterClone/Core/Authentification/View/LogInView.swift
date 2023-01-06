//
//  LogInView.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 06.01.2023.
//

import SwiftUI

struct LogInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        // parent container
        VStack {
            
            // header view
            VStack(alignment: .leading) {
                HStack { Spacer() }
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welkome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
            .frame(height: 260)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(spacing: 40) {
                TextField("Email", text: $email)
                
                TextField("password", text: $password)
            }
            .padding(.horizontal, 35)
            .padding(.top, 45)
            
            HStack {
                Spacer()
                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 35)
                }

            }
            
            Button {
                print("Sign In here...")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have acconut?")
                        .font(.caption)
                    Text("SignUp")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 30)
                .foregroundColor(Color(.systemBlue))
            }

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
