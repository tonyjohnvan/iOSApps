//
//  RatingVC.swift
//  LinkinusaClient
//
//  Created by Fan Zhang on 10/20/15.
//  Copyright © 2015 TJV Studio. All rights reserved.
//

import Foundation

import UIKit

class RatingVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var topperView: UIView!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    var rates:[Rate] = RateData
    
    // white status bar
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add the shadow of the view
        topperView.layer.shadowColor = UIColor.blackColor().CGColor
        
        topperView.layer.shadowOffset = CGSizeZero
        topperView.layer.shadowOpacity = 0.5
        topperView.layer.shadowRadius = 5
        
        // setting up the table view
        
        mainTableView.allowsSelection = false;
        mainTableView.separatorStyle = .None
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rates.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("rateCell", forIndexPath: indexPath)
        
        let cell = tableView.dequeueReusableCellWithIdentifier("rateCell") as! RateTabelCell
        
        
        let oneRate = rates[indexPath.row] as Rate
        cell.lblUsername.text = oneRate.username
        cell.lblContent.text = oneRate.content

        cell.backgroundColor = UIColor.clearColor()

        cell.imageBG.image = UIImage(named: "tabelCardItemBG")
        
        switch oneRate.star {
        case "1": cell.imageRate.image = UIImage(named: "1sr")
        case "2": cell.imageRate.image = UIImage(named: "2sr")
        case "3": cell.imageRate.image = UIImage(named: "3sr")
        case "4": cell.imageRate.image = UIImage(named: "4sr")
        case "5": cell.imageRate.image = UIImage(named: "5sr")
        default: cell.imageRate.image = UIImage(named: "1sr")
        }
        
        cell.btnReply.tag = indexPath.row
        cell.btnReply.addTarget(self, action: "cellButtonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        
        return cell
//        return UITableViewCell()
    }
    
    func cellButtonClicked(sender:UIButton) {
        
        let buttonRow = sender.tag
        
        print("Button \(buttonRow) tapped")
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
}