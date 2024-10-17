//
//  RainyReserveApp.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 08/10/2024.
//

import SwiftUI

@main
struct RainyReserveApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground() // or use configureWithOpaqueBackground
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some Scene {
        WindowGroup {
            OnboardingView().preferredColorScheme(.dark)
        }
    }
}
