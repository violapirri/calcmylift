//
//  BBTypeTableViewController.swift
//  Calc My Lift
//
//  Created by Viola Pirri on 6/21/15.
//  Copyright (c) 2015 Viola Pirri. All rights reserved.
//

import UIKit

class BBTypeTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func tableView(tableView: (UITableView!), willSelectRowAtIndexPath indexPath: (NSIndexPath!)) -> (NSIndexPath!) {
        
        rowCounter = indexPath.row
        
        return indexPath
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 4
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.

        let segueID: String = segue.identifier!
        switch segueID {
        case "olympicBBSegue":
            bbWeight = 45
        case "ezCurlBBSegue":
            bbWeight = 25
        case "smallBBSegue":
            bbWeight = 35
        case "trapBBSegue":
            bbWeight = 55
        default:
            bbWeight = 0
        }
        
    }
}
