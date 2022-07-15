//
//  BookmakerViewController.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import UIKit
import RxSwift
import RxCocoa

class BookmakerViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        tableView.register(BookmakerTableViewCell.self, forCellReuseIdentifier: BookmakerTableViewCell.identifier)
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        330
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BookmakerTableViewCell.identifier, for: indexPath) as? BookmakerTableViewCell else { return UITableViewCell() }
        
        return cell
    }
    
}
