//
//  SignUpVC.swift
//  RedBeans
//
//  Created by Fan Zhang on 5/25/15.
//  Copyright (c) 2015 TJV Studio. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var text_email: UITextField!
    @IBOutlet weak var label_validEmail: UILabel!
    @IBOutlet weak var btn_next: UIButton!
    override func viewDidLoad() {
        settingUpUI()
    }
    
    func settingUpUI(){
        
        btn_next.backgroundColor = UIColor.clearColor()
        btn_next.layer.cornerRadius = 5
        btn_next.layer.borderWidth = 1
        btn_next.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func isValidEmail(testStr:String) -> Bool {
        // println("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(testStr)
    }
    
    //segue
    @IBAction func backtoSignUp(segue:UIStoryboardSegue){
    }

    @IBAction func emailCheck(sender: UITextField) {
        if !text_email.text.isEmail(){
            label_validEmail.alpha = 1
        }
    }
    @IBAction func hideLabel(sender: UITextField) {
        label_validEmail.alpha = 0
    }
}

extension String {
    func isEmail() -> Bool {
        let regex = NSRegularExpression(pattern: "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$", options: .CaseInsensitive, error: nil)
        return regex?.firstMatchInString(self, options: nil, range: NSMakeRange(0, count(self))) != nil
    }
}
