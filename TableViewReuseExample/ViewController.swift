//
//  ViewController.swift
//  TableViewReuseExample
//
//  Created by Joshua Kuehn on 1/12/16.
//  Copyright © 2016 Kuehn LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstOrder:FirstOrder?
    var theResistance:TheResistance?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: IBActions and Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "TableView" {
            let navController = segue.destinationViewController as! UINavigationController
            let tableView = navController.topViewController as! MyTableView
            
            switch sender as! String {
                
            case "FirstOrder":
                firstOrder = FirstOrder()
                tableView.chosenSide = firstOrder
                navController.navigationBar.barStyle = .Black
                navController.navigationBar.tintColor = UIColor.blackColor()
                
            case "TheResistance":
                theResistance = TheResistance()
                tableView.chosenSide = theResistance
                
            default:
                print("Error")
                
            }
            
        }
    }

    @IBAction func joinTheFirstOrder(sender: UIButton) {
        performSegueWithIdentifier("TableView", sender: "FirstOrder")
    }

    @IBAction func joinTheResistance(sender: UIButton) {
        performSegueWithIdentifier("TableView", sender: "TheResistance")
    }
}

