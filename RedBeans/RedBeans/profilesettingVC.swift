//
//  profilesettingVC.swift
//  RedBeans
//
//  Created by Fan Zhang on 5/25/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit

class profilesettingVC: UIViewController {
    @IBOutlet weak var btn_next: UIButton!
    
    @IBOutlet weak var btn_male1: UIButton!
    
    @IBOutlet weak var btn_female1: UIButton!
    
    @IBOutlet weak var img_fm1: UIImageView!
    
    @IBOutlet weak var btn_female2: UIButton!
    
    @IBOutlet weak var img_fm2: UIImageView!
    
    @IBOutlet weak var btn_male2: UIButton!
    
    override func viewDidLoad() {
        settingUpUI()
    }
    
    @IBAction func male1tui(sender: UIButton, forEvent event: UIEvent) {
        img_fm1.image = UIImage(named: "tab_btn_male.png")
    }
    @IBAction func female1tui(sender: UIButton, forEvent event: UIEvent) {
        img_fm1.image = UIImage(named: "tab_btn_female.png")
    }
    @IBAction func male2tui(sender: UIButton, forEvent event: UIEvent) {
        img_fm2.image = UIImage(named: "tab_btn_male.png")
    }
    @IBAction func female2tui(sender: UIButton, forEvent event: UIEvent) {
        img_fm2.image = UIImage(named: "tab_btn_female.png")
    }
    
    func settingUpUI(){
        btn_next.backgroundColor = UIColor.clearColor()
        btn_next.layer.cornerRadius = 5
        btn_next.layer.borderWidth = 1
        btn_next.layer.borderColor = UIColor.whiteColor().CGColor
    }
}