//
//  OriginalTableViewController.swift
//  OriginalApp
//
//  Created by Rayne on 9/28/16.
//  Copyright © 2016 Kappa. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth


class OriginalTableViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.secureTextEntry = true
        
        
    }
    
    @IBAction func login() {
        let email = emailTextField.text
        let password = passwordTextField.text
        
        
        FIRAuth.auth()?.createUserWithEmail(email!, password: password!, completion: { (user:FIRUser?, error:NSError?) in
            if error != nil {
                print(error?.description)
                
                
            }
        })
        
    }
    
    @IBAction func SingUp() {
        let email = emailTextField.text
        let password = passwordTextField.text
        
        
        FIRAuth.auth()?.createUserWithEmail(email!, password: password!, completion: { (user:FIRUser?, error:NSError?) in
            if error != nil {
                print(error?.description)
            }
        })
        
        
        
        
    }
    
    
    
    
    
    // MARK: - Table view data source
    
    
    
    
    
}
