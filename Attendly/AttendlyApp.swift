//
//  AttendlyApp.swift
//  Attendly
//
//  Created by Rania Alageel on 08/02/1444 AH.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct AttendlyApp:App{
    
    @UIApplicationDelegateAdaptor(AppDelegate.self)var appDelegate
    var body: some Scene {
        WindowGroup {
           //ContentView()
        SwiftUIViewSplach()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
//struct AttendlyApp: App {
   
//}
