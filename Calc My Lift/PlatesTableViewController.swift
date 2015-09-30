//
//  PlatesTableViewController.swift
//  Calc My Lift
//
//  Created by Viola Pirri on 7/9/15.
//  Copyright (c) 2015 Viola Pirri. All rights reserved.
//

import UIKit

class PlatesTableViewController : UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var numofPlatesArray = ["2","4","6","8","10"]
    
    var cellTapped:Bool = true
    var currentRow = -1
    
    @IBOutlet var twolbPlatesNum: UILabel!
    @IBOutlet var fivelbPlatesNum: UILabel!
    @IBOutlet var tenlbPlatesNum: UILabel!
    @IBOutlet var twentyFivelbPlatesNum: UILabel!
    @IBOutlet var thirtyFivelbPlatesNum: UILabel!
    @IBOutlet var fortyFivelbPlatesNum: UILabel!
    
    @IBOutlet var twolbPicker: UIPickerView!
    @IBOutlet var fivelbPicker: UIPickerView!
    @IBOutlet var tenlbPicker: UIPickerView!
    @IBOutlet var twentyFivelbPicker: UIPickerView!
    @IBOutlet var thirtyFivelbPicker: UIPickerView!
    @IBOutlet var fortyFivelbPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.twolbPicker.delegate = self
        self.twolbPicker.dataSource = self
        self.fivelbPicker.delegate = self
        self.fivelbPicker.dataSource = self
        self.tenlbPicker.delegate = self
        self.tenlbPicker.dataSource = self
        self.twentyFivelbPicker.delegate = self
        self.twentyFivelbPicker.dataSource = self
        self.thirtyFivelbPicker.delegate = self
        self.thirtyFivelbPicker.dataSource = self
        self.fortyFivelbPicker.delegate = self
        self.fortyFivelbPicker.dataSource = self
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numofPlatesArray.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numofPlatesArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let value:Int = Int(numofPlatesArray[row])!
        
        if pickerView.tag == 2 {
            let myNum = Double(value) * 2.5
            twolbPlatesNumTotal = Int(myNum)
            twolbPlatesNum.text = "\(numofPlatesArray[row]) plates"
        }
        if pickerView.tag == 5 {
            let myNum = value * 5
            fivelbPlatesNumTotal = Int(myNum)
            fivelbPlatesNum.text = "\(numofPlatesArray[row]) plates"
        }
        if pickerView.tag == 10 {
            let myNum = value * 10
            tenlbPlatesNumTotal = Int(myNum)
            tenlbPlatesNum.text = "\(numofPlatesArray[row]) plates"
        }
        if pickerView.tag == 25 {
            let myNum = value * 25
            twentyFivelbPlatesNumTotal = Int(myNum)
            twentyFivelbPlatesNum.text = "\(numofPlatesArray[row]) plates"
        }
        if pickerView.tag == 35 {
            let myNum = value * 35
            thirtyFivelbPlatesNumTotal = Int(myNum)
            thirtyFivelbPlatesNum.text = "\(numofPlatesArray[row]) plates"
        }
        if pickerView.tag == 45 {
            let myNum = value * 45
            fortyFivelbPlatesNumTotal = Int(myNum)
            fortyFivelbPlatesNum.text = "\(numofPlatesArray[row]) plates"
        }


        plateWeight = twolbPlatesNumTotal + fivelbPlatesNumTotal + tenlbPlatesNumTotal + twentyFivelbPlatesNumTotal + thirtyFivelbPlatesNumTotal + fortyFivelbPlatesNumTotal
    }
    
    override func tableView(tableView: (UITableView!), willSelectRowAtIndexPath indexPath: (NSIndexPath!)) -> (NSIndexPath!) {
        
        return indexPath
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
     
        if indexPath.row == currentRow {
            if cellTapped == false {
                cellTapped = true
                switch currentRow {
                case 0:
                    twolbPicker.hidden = false
                    twolbPlatesNum.hidden = true
                case 1:
                    fivelbPicker.hidden = false
                    fivelbPlatesNum.hidden = true
                case 2:
                    tenlbPicker.hidden = false
                    tenlbPlatesNum.hidden = true
                case 3:
                    twentyFivelbPicker.hidden = false
                    twentyFivelbPlatesNum.hidden = true
                case 4:
                    thirtyFivelbPicker.hidden = false
                    thirtyFivelbPlatesNum.hidden = true
                case 5:
                    fortyFivelbPicker.hidden = false
                    fortyFivelbPlatesNum.hidden = true
                default:
                    cellTapped = true
                }
            return 111
            } else {
                cellTapped = false
                switch currentRow {
                case 0:
                    twolbPicker.hidden = true
                    twolbPlatesNum.hidden = false
                case 1:
                    fivelbPicker.hidden = true
                    fivelbPlatesNum.hidden = false
                case 2:
                    tenlbPicker.hidden = true
                    tenlbPlatesNum.hidden = false
                case 3:
                    twentyFivelbPicker.hidden = true
                    twentyFivelbPlatesNum.hidden = false
                case 4:
                    thirtyFivelbPicker.hidden = true
                    thirtyFivelbPlatesNum.hidden = false
                case 5:
                    fortyFivelbPicker.hidden = true
                    fortyFivelbPlatesNum.hidden = false
                default:
                    bbWeight = 0
                }

                return 40
            }
        }
        return 40
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       //self.tableView.reloadRowsAtIndexPaths
        //self.tableView.reloadRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .None)
        
        let selectedRowIndex = indexPath
        currentRow = selectedRowIndex.row
        
        tableView.beginUpdates()
        tableView.endUpdates()
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
        return 6
    }

}
