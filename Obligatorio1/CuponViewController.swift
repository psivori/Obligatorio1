//
//  ViewController.swift
//  tableView
//
//  Created by Administrador on 8/4/16.
//  Copyright © 2016 MICHO. All rights reserved.
//

import UIKit

class CuponViewController: UIViewController {
    
    
    var cupon: Cupon?
    
    @IBOutlet weak var cuponDetailImage: UIImageView!
    @IBOutlet weak var cuponDetailName: UILabel!
    @IBOutlet weak var cuponDetailDiscount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cuponDetailImage.image = UIImage(named : cupon!.image)
        cuponDetailDiscount.text = "Descuento " + String(cupon!.discount) + "%"
        cuponDetailName.text = cupon!.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

