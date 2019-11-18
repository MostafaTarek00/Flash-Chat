//
//  RegisterViewController.swift
//  Flash-Chat
//
//  Created by Mustafa on 10/1/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    
    
    //Pre-linked IBOutlets
    

    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        
    }

    @IBAction func registerPressed(_ sender: AnyObject) {
        SVProgressHUD.show()
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else{
                //success
                print("Registration Successfull!")
                SVProgressHUD.dismiss()
               self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }

    }

    
}
