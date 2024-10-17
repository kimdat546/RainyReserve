//
//  HomeView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var transactions: [Transaction] = []
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                
                Spacer().frame(height: 20)
                
                // Card list
                CardListView()
                
                Spacer().frame(height: 20)
                
                // Statistics
                Text("Statistics")
                    .font(.normalHeading)
                    .foregroundColor(.primaryText)
                    .padding(.horizontal)
                
                StatisticsView()
                
                Spacer()
                
                NavigationLink(destination: TransactionListView(transactions: $transactions)) {
                    Text("View All Transactions")
                        .padding()
                        .background(Color.activeButton)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }.padding()
                Spacer()
            }
            .background(Color.primaryBackground)
            .edgesIgnoringSafeArea(.bottom)
            .navigationTitle("Home")
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().preferredColorScheme(.dark)
    }
}
