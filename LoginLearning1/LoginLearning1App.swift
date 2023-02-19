//
//  LoginLearning1App.swift
//  LoginLearning1
//
//  Created by Max Victor on 17/02/2023.
//

import SwiftUI
import Firebase


@main
struct LoginLearning1App: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
