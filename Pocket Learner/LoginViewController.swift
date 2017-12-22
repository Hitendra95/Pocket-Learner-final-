//
//  LoginViewController.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/22/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButtonPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextField.text!){
            (user,error) in
            if error != nil
            {
                print(error!)
            }
            else
            {
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
}
