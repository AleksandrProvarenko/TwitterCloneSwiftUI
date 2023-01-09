//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 09.01.2023.
//

import SwiftUI
import Firebase

class AuthViewMidel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
    }
    
    func logIn(withEmail email: String, password: String) {
        print("DEBUG: Login with email \(email)")
    }
    
    func register(withEmail email: String, password: String, fullName: String, userName: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBAG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            
            let data = ["email": email,
                        "userName": userName.lowercased(),
                        "fullName": fullName,
                        "password": password]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    print("DEBUG: Did upload user data...")
                }
        }
    }
    
    func signUot() {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
}
