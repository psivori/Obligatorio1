//
//  TableViewController.swift
//  tableView
//
//  Created by Administrador on 8/4/16.
//  Copyright © 2016 MICHO. All rights reserved.
//

import UIKit

class CuponsViewController: UITableViewController {
    
    var cupons = [Cupon]()
    var selectedCupon: Cupon?
    
    func loadSampleCupons() {
        let cupon1 = Cupon(name: "Shampoo Loreal", discount: 40, image:  "loreal")
        let cupon2 = Cupon(name: "Desodorante Rexona", discount: 50, image: "rexona")
        cupons += [cupon1, cupon2]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleCupons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cupons.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "cuponsViewCellCustom"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CuponsViewCellCustom
        
        // Fetches the appropriate meal for the data source layout.
        let cupon = cupons[indexPath.row]
        cell.cuponName.text = cupon.name
        cell.cuponImage.image = UIImage(named : cupon.image)
        cell.cuponDiscount.text = "Descuento " + String(cupon.discount) + "%"
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        selectedCupon = cupons[indexPath.row]
        self.performSegueWithIdentifier("showCupon", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let cuponViewController = segue.destinationViewController as? CuponViewController{
            cuponViewController.cupon = selectedCupon
        }
    }

   
}
