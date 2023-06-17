//
// HUEYApp.swift
//  HUEY


import SwiftUI

@main
struct HUEYApp: App {
    
    //App storage to remember if user has done the onboarding
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
