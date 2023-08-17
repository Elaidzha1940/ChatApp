//  /*
//
//  Project: ChatApp
//  ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
