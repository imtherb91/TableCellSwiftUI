//
//  CustomRowViewCell.swift
//  TableCellSwiftUI
//
//  Created by Luke Allen on 7/24/20.
//

import UIKit
import SwiftUI

class CustomRowViewCell: UITableViewCell {
    
    init(player: ThunderPlayer) {
        super.init(style: .default, reuseIdentifier: "CustomRowViewCell")
        let vc = UIHostingController(rootView: CustomRowView(player: player))
        contentView.addSubview(vc.view)
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        vc.view.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        vc.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        vc.view.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        vc.view.backgroundColor = .clear
        
        accessoryType = .disclosureIndicator
        selectionStyle = .default
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
