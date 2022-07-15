//
//  BookmakerViewController.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import UIKit

class BookmakerViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BookmakerTableViewCell.identifier, for: indexPath) as? BookmakerTableViewCell else { return UITableViewCell() }
        
        return cell
    }
    
    private func configureTableView() {
        tableView.register(BookmakerTableViewCell.self, forCellReuseIdentifier: BookmakerTableViewCell.identifier)
        tableView.separatorStyle = .none
    }
    
}
