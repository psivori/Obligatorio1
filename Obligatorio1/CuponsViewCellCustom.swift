//
//  TableViewCellCustom.swift
//  tableView
//
//  Created by Administrador on 8/4/16.
//  Copyright © 2016 MICHO. All rights reserved.
//

import UIKit

class CuponsViewCellCustom: UITableViewCell {

    @IBOutlet weak var ratingControl: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
