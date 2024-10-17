//
//  OnboardingView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 08/10/2024.
//

import SwiftUI


struct OnboardingView: View {
    @State private var isOnboardingComplete = false
        
        var body: some View {
            if isOnboardingComplete {
                HomeView() // Show HomeView once onboarding is complete
            } else {
                ZStack {
                    // Background
                    Color.primaryBackground
                        .ignoresSafeArea() // Ensures the background covers the entire screen
                    
                    VStack {
                        Spacer()

                        // Main content with padding
                        VStack(alignment: .center, spacing: 20) {
                            // Title
                            Text("Welcome to RainyReserve")
                                .font(.normalHeading)
                                .foregroundColor(.primaryText)
                                .multilineTextAlignment(.center)
                            
                            // Description
                            Text("Track and manage your finances effortlessly across all wallets, from cash to credit cards.")
                                .font(.normalTitle)
                                .foregroundColor(.primaryText)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 30)
                        }
                        .padding()

                        Spacer()

                        // Button to continue to the next onboarding screen
                        Button(action: {
                            // Trigger onboarding complete
                            isOnboardingComplete = true
                        }) {
                            Text("Next")
                                .font(.buttonText)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.activeButton)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .padding(.horizontal, 40)
                        }
                        
                        Spacer().frame(height: 50)
                    }
                }
                .transition(.slide) // Add a smooth transition when switching views
            }
        }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
