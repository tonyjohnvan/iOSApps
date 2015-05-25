//
//  SignUpGuide1.swift
//  RedBeans
//
//  Created by Fan Zhang on 5/25/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit

class SignUpGuideOneVC: UIViewController {
    
    @IBOutlet weak var btn_canelDetail: UIButton!
    
    override func viewDidLoad() {
        settingUpUI()
    }
    
    func settingUpUI(){
        btn_canelDetail.backgroundColor = UIColor.clearColor()
        btn_canelDetail.layer.cornerRadius = 3
        btn_canelDetail.layer.borderWidth = 1
        btn_canelDetail.layer.borderColor = UIColor.grayColor().CGColor
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage.new(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage
            .new()
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.view.backgroundColor = UIColor.clearColor()
    }
}