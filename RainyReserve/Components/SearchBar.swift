//
//  SearchBar.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search by category", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Text("Clear")
                }
                .padding(.trailing)
            }
        }
        .padding()
    }
}
