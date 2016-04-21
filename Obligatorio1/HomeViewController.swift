//
//  ViewController.swift
//  Obligatorio1
//
//  Created by Administrador on 14/4/16.
//  Copyright © 2016 MICHO. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var tarjeta: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var email = defaults.stringForKey("Email")
        var password = defaults.stringForKey("Password")
        
        if email == nil || password == nil{
            self.performSegueWithIdentifier("toLogin", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func generateQRCode(sender: AnyObject) {
            let data = defaults.stringForKey("Email")!.dataUsingEncoding(NSISOLatin1StringEncoding)
            if let filter = CIFilter(name: "CIQRCodeGenerator") {
                filter.setValue(data, forKey: "inputMessage")
                filter.setValue("H", forKey: "inputCorrectionLevel")
                let transform = CGAffineTransformMakeScale(10, 10)
                if let output = filter.outputImage?.imageByApplyingTransform(transform) {
                    UIImage(CIImage: output)
                }
            }
    }
        
}

