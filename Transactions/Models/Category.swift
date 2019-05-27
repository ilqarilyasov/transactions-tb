//
//  Category.swift
//  Transactions
//
//  Created by Ilgar Ilyasov on 5/25/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import Foundation

struct Category: Equatable, Comparable, Hashable {
    
    let id: String
    let name: String
    var transactions: [Transaction]?
    
    init(id: String = UUID().uuidString,
         name: String,
         transactions: [Transaction]? = nil) {
        
        self.name = name
        self.transactions = transactions
        self.id = id
    }
    
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.name == rhs.name
    }
    
    static func < (lhs: Category, rhs: Category) -> Bool {
        return lhs.name < rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
