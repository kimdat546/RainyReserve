//
//  TransactionView.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import SwiftUI

struct TransactionView: View {
    @State private var transactions: [Transaction] = []
    @State private var selectedCategory: String = ""
    @State private var selectedType: TransactionType = .income
    @State private var amount: String = ""
    @State private var date: Date = Date()
    @State private var note: String = ""

    var body: some View {
        VStack {
            // Category Selector (you can replace this with a Picker or custom view)
            TextField("Category", text: $selectedCategory)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Transaction Type Selector
            Picker("Type", selection: $selectedType) {
                ForEach(TransactionType.allCases, id: \.self) { type in
                    Text(type.rawValue.capitalized).tag(type)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            // Amount Input
            TextField("Amount", text: $amount)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Date Picker
            DatePicker("Date", selection: $date, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            // Optional Note Input
            TextField("Note (optional)", text: $note)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Add Transaction Button
            Button(action: {
                addTransaction()
            }) {
                Text("Add Transaction")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.activeButton)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            // List of Transactions
            List(transactions, id: \.amount) { transaction in
                VStack(alignment: .leading) {
                    Text("\(transaction.category) - \(transaction.type.rawValue.capitalized)")
                    Text("Amount: $\(transaction.amount, specifier: "%.2f")")
                    Text("Date: \(transaction.date, formatter: dateFormatter)")
                    if let note = transaction.note {
                        Text("Note: \(note)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .padding()
    }

    private func addTransaction() {
        guard let amountValue = Double(amount) else { return }
        let newTransaction = Transaction(
            category: selectedCategory,
            type: selectedType,
            amount: amountValue,
            date: date,
            note: note.isEmpty ? nil : note
        )
        
        transactions.append(newTransaction)
        
        // Clear the form for the next transaction
        selectedCategory = ""
        amount = ""
        note = ""
        date = Date()
    }
}

// Date Formatter for displaying the date in a friendly format
private var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}
