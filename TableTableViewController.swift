//
//  TableTableViewController.swift
//  Calc My Lift
//
//  Created by Viola Pirri on 6/20/15.
//  Copyright (c) 2015 Viola Pirri. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {

    @IBOutlet var totalWeightLabel: UILabel!
    @IBOutlet var bbTypeWeightLabel: UILabel!
    @IBOutlet var plateWeightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bbTypeWeightLabel.text = "\(bbWeight) lbs"
        plateWeightLabel.text = "\(plateWeight) lbs"
        var bbWeightTotal = 0
        var plateWeightTotal = 0
        if bbWeight != 0 {
            bbWeightTotal = bbWeight
        }
        if plateWeight != 0 {
            plateWeightTotal = plateWeight
        }
        let total = bbWeightTotal + plateWeightTotal
        totalWeightLabel.text = "\(total) lbs"
        
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
        return 3
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
        
}

