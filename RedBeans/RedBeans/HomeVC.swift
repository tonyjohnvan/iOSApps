//
//  ViewController.swift
//  RedBeans
//
//  Created by Fan Zhang on 5/21/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var btn_signUp: UIButton!

    @IBOutlet weak var btn_login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func settingUpUI(){
        // btn Style Setting up
        btn_signUp.backgroundColor = UIColor.clearColor()
        btn_signUp.layer.cornerRadius = 5
        btn_signUp.layer.borderWidth = 1
        btn_signUp.layer.borderColor = UIColor.whiteColor().CGColor
        
        btn_login.backgroundColor = UIColor.clearColor()
        btn_login.layer.cornerRadius = 5
        btn_login.layer.borderWidth = 1
        btn_login.layer.borderColor = UIColor.whiteColor().CGColor
    }

}

