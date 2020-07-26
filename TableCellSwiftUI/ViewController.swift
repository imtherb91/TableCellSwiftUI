//
//  ViewController.swift
//  TableCellSwiftUI
//
//  Created by Luke Allen on 7/24/20.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    
    let dataSource = ThunderDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        title = "Oklahoma City Thunder"
    }

    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomRowViewCell(player: dataSource.players[indexPath.row])
    }
}

