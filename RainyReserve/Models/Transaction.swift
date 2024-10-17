//
//  Transaction.swift
//  RainyReserve
//
//  Created by Nguyễn Đạt on 12/10/2024.
//

import Foundation

struct Transaction {
    var category: String
    var type: TransactionType
    var amount: Double
    var date: Date
    var note: String?
}

enum TransactionType: String, CaseIterable {
    case income
    case expense
    case transfer
}
