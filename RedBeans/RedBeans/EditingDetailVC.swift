//
//  EditingDetailVC.swift
//  RedBeans
//
//  Created by Fan Zhang on 5/25/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit


class EditingDetailVC: UIViewController {

    
    override func viewDidLoad() {
        
    }
    
    
    func settingUpUI(){
       
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage.new(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = UIImage
            .new()
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.view.backgroundColor = UIColor.blackColor()
    }
    
}
