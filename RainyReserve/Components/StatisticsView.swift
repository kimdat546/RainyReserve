//
//  StatisticsView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct StatItem: View {
    let title: String
    let value: String
    let icon: String
    let backgroundColor: Color

    var body: some View {
        VStack {
            Image(systemName: icon) // You can replace this with a custom icon if needed
                .font(.system(size: 24))
                .foregroundColor(.white)
                .padding(10)
                .background(backgroundColor)
                .clipShape(Circle())
            
            Text(title)
                .font(.normalText)
                .foregroundColor(.primaryText)
            
            Text(value)
                .font(.normalHeading)
                .foregroundColor(.primaryText)
        }
        .frame(width: 140, height: 120)
        .background(Color.secondaryBackground)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct StatisticsView: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                StatItem(title: "Goals", value: "6", icon: "flag.fill", backgroundColor: .orange)
                StatItem(title: "Budgets", value: "4", icon: "creditcard.fill", backgroundColor: .green)
            }
            HStack(spacing: 20) {
                StatItem(title: "Money saved", value: "35%", icon: "dollarsign.circle.fill", backgroundColor: .brightRed)
                StatItem(title: "Transactions", value: "26", icon: "arrow.left.arrow.right.circle.fill", backgroundColor: .cyan)
            }
        }
        .padding(.horizontal)
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
