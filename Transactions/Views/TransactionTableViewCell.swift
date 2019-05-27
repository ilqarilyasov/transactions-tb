//
//  TransactionTableViewCell.swift
//  Transactions
//
//  Created by Ilgar Ilyasov on 5/25/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    var transaction: Transaction? {
        didSet { updateViews() }
    }

    private func updateViews() {
        guard let transaction = transaction else { return }
        
        titleLabel.text = transaction.title
        dateLabel.text = dateFormatter.string(from: transaction.date)
        valueLabel.text = "$\(transaction.value)"
    }
    
    lazy var dateFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
        
    }()
}
