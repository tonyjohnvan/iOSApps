//
//  GamePickerViewController.swift
//  Rating
//
//  Created by Fan Zhang on 5/21/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit

class GamePickerViewController: UITableViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GameCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = games[indexPath.row]
        return cell
    }

}
