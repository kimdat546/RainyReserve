//
//  HeaderView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var showSettings = false

    var body: some View {
        HStack {
            Text("Hello, Maria!")
                .font(.largeHeading) // Custom font from your extension
                .foregroundColor(.primaryText)
            Spacer()
            Button(action: {
                // Open settings sheet
                showSettings.toggle()
            }) {
                Image("avatar") // Use the avatar image from Assets
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            }
            .sheet(isPresented: $showSettings) {
                // Settings sheet content
                SettingsView()
                    .background(Color.primaryBackground)
            }
        }
        .padding(.horizontal)
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
