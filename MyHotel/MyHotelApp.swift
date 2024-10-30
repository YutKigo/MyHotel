//
//  MyHotelApp.swift
//  MyHotel
//
//  Created by 木越湧太 on 2024/09/05.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct MyHotelApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        // register app delegate for Firebase setup
        @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
        
        WindowGroup {
            ContentView()
        }
    }
}
