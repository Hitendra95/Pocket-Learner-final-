//
//  LoginViewController.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/22/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
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
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil
            {
               // print("error in signing in")
                self.errorLabel.isEnabled = true
                SVProgressHUD.dismiss()
            }
            else
            {
               // print("login successfull")
                
                self.performSegue(withIdentifier: "goToTopic", sender: self)
                SVProgressHUD.dismiss()
            }
            
        }
        
      
    }
    
}
