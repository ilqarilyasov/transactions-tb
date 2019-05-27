//
//  TransactionController.swift
//  Transactions
//
//  Created by Ilgar Ilyasov on 5/25/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import Foundation

class TransactionController {
    
    private(set) var transactions = [Transaction(title: "Dinner",
                                                 date: Date(),
                                                 value: 20.80,
                                                 category: Category(name: "Food")),
                                     Transaction(title: "Car Wash",
                                                 date: Date(),
                                                 value: 20.80,
                                                 category: Category(name: "Other")),
                                     Transaction(title: "Lunch",
                                                 date: Date(),
                                                 value: 20.80,
                                                 category: Category(name: "Food"))]
    
    private(set) var categories = [Category(name: "Food",
                                            transactions: [Transaction(title: "Dinner",
                                                                       date: Date(),
                                                                       value: 20.80,
                                                                       category: Category(name: "Food")),
                                                           Transaction(title: "Lunch",
                                                                       date: Date(),
                                                                       value: 20.80,
                                                                       category: Category(name: "Food"))]),
                                   Category(name: "Other",
                                            transactions: [Transaction(title: "Lunch",
                                                                       date: Date(),
                                                                       value: 20.80,
                                                                       category: Category(name: "Food"))])]
    
    func addNewTransaction() {
        let transaction = Transaction(title: "Apple",
                                      date: Date(),
                                      value: 10.60,
                                      category: Category(name: "Grocery"))
        
        let category = Category(name: "Grocery", transactions: [transaction])
        
        if categories.contains(category) {
            if let index = categories.firstIndex(of: category) {
                categories[index].transactions?.append(transaction)
            }
        } else {
            categories.append(category)
        }
    }
}
