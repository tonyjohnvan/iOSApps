//
//  SignUpGuideTowVC.swift
//  RedBeans
//
//  Created by Fan Zhang on 5/25/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit

class SignUpGuideTowVC: UIViewController {
    
    @IBOutlet weak var btn_done: UIButton!
    
    override func viewDidLoad() {
        settingUpUI()
    }
    
    
    func settingUpUI(){
        btn_done.backgroundColor = UIColor.clearColor()
        btn_done.layer.cornerRadius = 3
        btn_done.layer.borderWidth = 1
        btn_done.layer.borderColor = UIColor.grayColor().CGColor
    }
    
}
