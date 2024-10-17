//
//  OnboardingPage2.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct OnboardingPage2: View {
    var body: some View {
            VStack {
                Text("Organize Your Wallets")
                    .font(.normalHeading)
                    .foregroundColor(.white)
                
                Text("Manage cash, debit, credit, and all your bank accounts.")
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

struct OnboardingPage2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage2()
    }
}
