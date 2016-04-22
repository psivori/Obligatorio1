//
//  TableViewCellCustom.swift
//  tableView
//
//  Created by Administrador on 8/4/16.
//  Copyright © 2016 MICHO. All rights reserved.
//

import UIKit

class CuponsViewCellCustom: UITableViewCell {

   
    @IBOutlet weak var cuponImage: UIImageView!
    @IBOutlet weak var cuponName: UILabel!
    @IBOutlet weak var cuponDiscount: UILabel!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    
    

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
