//
//  registerViewController.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/22/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class registerViewController: UIViewController {

    @IBOutlet weak var emailtextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButtonPressed: UIButton!
    
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
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailtextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil
            {
               // print("erorr unsuccesfull!")
                //print(error!)
               self.errorLabel.isEnabled = true
                SVProgressHUD.dismiss()
                
            }
            else
            {
                print("registration successfull!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToTopic", sender: self)
            }
        }
        
        
    }
    

}
