//
//  ViewController.swift
//  TableViewTest
//
//  Created by Fan Zhang on 10/21/15.
//  Copyright © 2015 TJV Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct MyData {
        var firstRowLabel:String
        var secondRowLabel:String
    }
    
    var tableData: [MyData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tableData = [
            MyData(firstRowLabel: "The first row", secondRowLabel: "Hello"),
            MyData(firstRowLabel: "The second row", secondRowLabel: "There"),
            MyData(firstRowLabel: "Third and final row", secondRowLabel: "http://peterwitham.com")
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myProtoCell") as! MyTableCell
        // Set the first row text label to the firstRowLabel data in our current array item
        cell.lblFirst.text = tableData[indexPath.row].firstRowLabel
        // Set the second row text label to the secondRowLabel data in our current array item
        cell.lblSecond.text = tableData[indexPath.row].secondRowLabel
        // Return our new cell for display
        return cell
    }


}

