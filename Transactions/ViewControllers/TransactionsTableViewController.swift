//
//  TransactionsTableViewController.swift
//  Transactions
//
//  Created by Ilgar Ilyasov on 5/25/19.
//  Copyright © 2019 IIIyasov. All rights reserved.
//

import UIKit

class TransactionsTableViewController: UITableViewController {
    
    let transactionController = TransactionController()
    
    @IBAction func didAddTransaction(_ sender: Any) {
        transactionController.addNewTransaction()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return transactionController.categories.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let category = transactionController.categories[section]
        return category.transactions?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath)

        guard let transactionCell = cell as? TransactionTableViewCell else { return cell }
        
        let category = transactionController.categories[indexPath.section]
        let transaction = category.transactions?[indexPath.row] ?? nil
        transactionCell.transaction = transaction

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = transactionController.categories[section].name
        return title
    }

}
