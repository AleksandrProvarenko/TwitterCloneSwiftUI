//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Alex Provarenko on 03.01.2023.
//

import SwiftUI
import FirebaseCore

@main
struct TwitterCloneApp: App {
    
    @StateObject var viewModel = AuthViewMidel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
//              ContentView()
                ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}
