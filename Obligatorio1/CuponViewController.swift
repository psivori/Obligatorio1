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
    @IBOutlet weak var cuponDetailQrCode: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cuponDetailImage.image = UIImage(named : cupon!.image)
        cuponDetailDiscount.text = "Descuento " + String(cupon!.discount) + "%"
        cuponDetailName.text = cupon!.name
        self.generateQRCode()
    }

    func generateQRCode() {
        var str : String = cuponDetailDiscount.text! + cuponDetailName.text!
        let data = str.dataUsingEncoding(NSISOLatin1StringEncoding)
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue("H", forKey: "inputCorrectionLevel")
            let transform = CGAffineTransformMakeScale(10, 10)
            if let output = filter.outputImage?.imageByApplyingTransform(transform) {
                cuponDetailQrCode.image = UIImage(CIImage: output)
            }
        }
    }

}
