//
//  FruitApp.swift
//  FruitsApp
//
//  Created by Yaz Burrell on 6/17/21.
//

import SwiftUI

@main
struct FruitApp: App {
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
