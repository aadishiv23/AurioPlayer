//
//  FilePlayApp.swift
//  FilePlay
//
//  Created by Aadi Shiv Malhotra on 7/18/22.
//


import SwiftUI
import Firebase


@main
struct FilePlayApp: App {
    
    let data = internalData()
    init() {
        FirebaseApp.configure()
        data.loadAlbums()
        // Firestore.enableLogging(true)
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(data: data)
        }
    }
}


