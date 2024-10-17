//
//  CardView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let balance: String
    let last4Digits: String
    let cardType: String // e.g., "MasterCard", "Visa"
}

struct CardView: View {
    var card: Card

    var body: some View {
        VStack(alignment: .leading) {
            Text("Total balance")
                .font(.normalTitle)
                .foregroundColor(.primaryText)

            Text(card.balance)
                .font(.largeHeading)
                .foregroundColor(.primaryText)
            
            Text("**** **** **** \(card.last4Digits)")
                .font(.normalText)
                .foregroundColor(.secondaryBackground)

            HStack {
                Image(card.cardType) // Icon for MasterCard/Visa
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
        .background(Color.secondaryBackground)
        .cornerRadius(15)
        .frame(width: 300, height: 180)
        .shadow(radius: 5)
    }
}

struct CardListView: View {
    @State private var cards = [
        Card(balance: "$222,358", last4Digits: "0322", cardType: "MasterCard"),
        Card(balance: "$105,740", last4Digits: "4521", cardType: "Visa")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(cards) { card in
                    CardView(card: card)
                        .onTapGesture {
                            // Navigate to the transaction view for this card
                        }
                }
            }
            .padding(.horizontal)
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
    }
}
