//
//  dictionaryTableViewCell.swift
//  sWord
//
//  Created by Paweł Tarszewski on 23.04.2016.
//  Copyright © 2016 Paweł Tarszewski. All rights reserved.
//

import UIKit

class dictionaryTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
