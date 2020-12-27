//
//  fructusApp.swift
//  fructus
//
//  Created by Walter Vannoy on 12/11/20.
//

import SwiftUI

@main
struct fructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
