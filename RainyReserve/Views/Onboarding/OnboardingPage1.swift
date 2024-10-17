//
//  OnboardingPage1.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct OnboardingPage1: View {
    var body: some View {
            VStack {
                Text("Welcome to RainyReserve")
                    .font(.normalHeading)
                    .foregroundColor(.white)
                
                Text("Track all your finances in one place.")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()

                Spacer()
                
                Button(action: {
                    // Navigate to the next onboarding screen
                }) {
                    Text("Next")
                        .font(.buttonText)
                        .padding()
                        .background(Color.activeButton)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                .padding()
            }
            .background(Color.primaryBackground)
        }
}

struct OnboardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1()
    }
}
