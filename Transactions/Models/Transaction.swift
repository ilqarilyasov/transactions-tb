//
//  Transaction.swift
//  Transactions
//
//  Created by Ilgar Ilyasov on 5/25/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import Foundation

struct Transaction {
    let title: String
    let date: Date
    let value: Double
    let category: Category
    
    init(title: String,
         date: Date,
         value: Double,
         category: Category) {
        
        self.title = title
        self.date = date
        self.value = value
        self.category = category
    }
}
