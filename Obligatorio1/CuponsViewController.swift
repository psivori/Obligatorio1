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
        let cupon1 = Cupon(name: "Loreal", discount: 40, image:  "icn-facebook")
        let cupon2 = Cupon(name: "Rexona", discount: 50, image: "icn-twitter")
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
        
        cell.nameLabel.text = cupon.name
        cell.photoImageView.image = UIImage(named : cupon.image)
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        selectedCupon = cupons[indexPath.row]
        self.performSegueWithIdentifier("showCupon", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let cuponViewController = segue.destinationViewController as? CuponViewController{
            
        }
    }

   
}
