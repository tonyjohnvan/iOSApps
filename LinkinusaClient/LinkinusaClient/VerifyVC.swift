//
//  VerifyVC.swift
//  LinkinusaClient
//
//  Created by Fan Zhang on 9/29/15.
//  Copyright © 2015 TJV Studio. All rights reserved.
//

import Foundation

import UIKit

class VerifyVC : UIViewController {
    
    @IBOutlet weak var topViewWrapper: UIView!
    // white status bar
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topViewWrapper.layer.shadowOffset = CGSize(width: 0, height: 2.4)
        topViewWrapper.layer.shadowOpacity = 0.3
        topViewWrapper.layer.shadowRadius = 6
        topViewWrapper.layer.borderWidth = 0
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}