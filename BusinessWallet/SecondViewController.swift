//
//  SecondViewController.swift
//  BusinessWallet
//
//  Created by Hissah on 2/3/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit
//عملت import للFirebase
import Firebase

class SecondViewController: UIViewController {

    
    //رابط قاعدة البيانات حقتنا
var ref = Firebase(url:"https://businesswallet.firebaseio.com/")
    
    
    
    // أضفت العناصر عشان أستخدمهم في إخفار لوحة المفاتيح في الدوال اللي تحتهم
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    //دالتين ربطتها بال  buttons عشان تختفي لوحة المفاتيح لما نضغطهم
    @IBAction func ForgetPasswordButton(sender: AnyObject) {
        self.EmailTextField.resignFirstResponder()
        self.PasswordTextField.resignFirstResponder()
    }
    
    
    
    
    @IBAction func SignInButton(sender: AnyObject) {
        self.EmailTextField.resignFirstResponder()
        self.PasswordTextField.resignFirstResponder()
   
        
    //دوال لتحقق من أن الدخول صحيح
        if EmailTextField.text == "" || PasswordTextField.text == "" {
        print("Make Sure to Fill in all textfields")
        }else {
        ref.authUser(EmailTextField.text, password: PasswordTextField.text, withCompletionBlock: { (ErrorType, authData) -> Void in
            if ErrorType != nil {
            print(ErrorType)
            print("There's an error with the given information")
            } else {
            print("login sucess") }  })
        }         }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // دالة أضفتها عشان تختفي لوحة المفاتيح لما نلمس أي مكان على الشاشة
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
}

