//
//  MyTableView.swift
//  TableViewReuseExample
//
//  Created by Joshua Kuehn on 1/12/16.
//  Copyright © 2016 Kuehn LLC. All rights reserved.
//

import UIKit

class MyTableView: UITableViewController {
    
    var chosenSide:ChosenSide?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = chosenSide?.title
        tableView.backgroundColor = chosenSide?.backgroundColor ?? tableView.backgroundColor
        tableView.separatorColor = chosenSide?.seperatorColor ?? tableView.separatorColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "Leader: \((chosenSide?.leader ?? "Unknown")!)"
            
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "Favorite Hobby: \((chosenSide?.favoriteHobby ?? "Unknown")!)"
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        cell.backgroundColor = chosenSide?.cellColor ?? cell.backgroundColor
        cell.textLabel?.textColor = chosenSide?.textColor ?? cell.textLabel?.textColor
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    @IBAction func backButtonPressed(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
