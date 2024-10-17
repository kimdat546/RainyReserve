//
//  SettingsView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CategorySetupView()) {
                    Text("Category Setup")
                }
                NavigationLink(destination: BudgetSetupView()) {
                    Text("Budget Setup")
                }
                NavigationLink(destination: WalletManagementView()) {
                    Text("Wallet Management")
                }
                // Add more settings as needed
                Section {
                    Button(action: {
                        // Handle other settings action like logout or about
                    }) {
                        Text("Logout")
                            .foregroundColor(.brightRed)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
