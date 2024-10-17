//
//  TransactionListView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

import SwiftUI

struct TransactionListView: View {
    @Binding var transactions: [Transaction] // Binding to the transaction array
    @State private var searchText: String = ""

    var filteredTransactions: [Transaction] {
        if searchText.isEmpty {
            return transactions
        } else {
            return transactions.filter { $0.category.lowercased().contains(searchText.lowercased()) }
        }
    }

    var body: some View {
        VStack {
            // Search Bar
            SearchBar(text: $searchText)
                .padding()

            List(filteredTransactions, id: \.amount) { transaction in
                VStack(alignment: .leading) {
                    Text("\(transaction.category) - \(transaction.type.rawValue.capitalized)")
                        .font(.headline)
                    Text("Amount: $\(transaction.amount, specifier: "%.2f")")
                        .font(.subheadline)
                    Text("Date: \(transaction.date, formatter: dateFormatter)")
                        .font(.subheadline)
                    if let note = transaction.note {
                        Text("Note: \(note)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .navigationTitle("Transactions")
    }
}

// Date Formatter for displaying the date in a friendly format
private var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}
