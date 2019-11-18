//
//  LogInViewController.swift
//  Flash-Chat
//
//  Created by Mustafa on 10/1/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    @IBAction func logInPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if  error != nil  {
                print(error!)
            } else {
                //success
                print("Login Successfull!")
                SVProgressHUD.dismiss()
            self.performSegue(withIdentifier: "goToChat", sender: self)            }
        }
    }
    
}
