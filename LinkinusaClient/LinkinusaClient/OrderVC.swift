//
//  OrderVC.swift
//  LinkinusaClient
//
//  Created by Fan Zhang on 10/22/15.
//  Copyright © 2015 TJV Studio. All rights reserved.
//

import Foundation

import UIKit

class OrderVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var topperView: UIView!
    
    @IBOutlet weak var btnAllOrders: UIButton!
    
    @IBOutlet weak var btnOrderDetail: UIButton!
    
    @IBOutlet weak var topTabBG: UIImageView!
    
    @IBAction func btnAllOrdersAct(sender: UIButton) {
        // Select All Orders and show allOrderTV(TabelView)
        // 1. Change BGImg
        topTabBG.image = UIImage(named: "topTab")
        
        allOrderTV.hidden = false
    }
    
    @IBAction func btnOrderDetailAct(sender: UIButton) {
        // Select Orders Detail and show orderDetailTV(TabelView)
        // 1. Change BGImg
        topTabBG.image = UIImage(named: "topTab_2")
        
        allOrderTV.hidden = true
    }
    
    // table...
    @IBOutlet weak var allOrderTV: UITableView!
    
    var allOrders:[OrderAll] = OrderAllData
    
    
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
        
        allOrderTV.allowsSelection = false;
        allOrderTV.separatorStyle = .None
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allOrders.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("allOrderCell") as! OrderAllTableCell
        
        let oneAllOrder = allOrders[indexPath.row] as OrderAll
        
        cell.backgroundColor = UIColor.clearColor()
        
        cell.lblOrderName.text = oneAllOrder.orderName
        
        // add a stroke through the price
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "$\(oneAllOrder.oringinalPrice)")
        attributeString.addAttribute(NSStrikethroughStyleAttributeName, value: 1, range: NSMakeRange(0, attributeString.length))
        cell.lblOrignalPrice.attributedText = attributeString
        
//        cell.lblOrignalPrice.text = "$\(oneAllOrder.oringinalPrice)"
        cell.lblPrice.text = "$\(oneAllOrder.price)"
        cell.lblSold.text = "\(oneAllOrder.sold)"
        cell.lblRedeemed.text = "\(oneAllOrder.redeemed)"
        
        return cell
//        return UITableViewCell()
    }

}
