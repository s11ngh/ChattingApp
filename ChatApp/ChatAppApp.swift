//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by ujjwal on 18/08/22.
//

import SwiftUI
import Firebase
@main
struct ChatAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
