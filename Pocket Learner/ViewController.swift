//
//  ViewController.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/22/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var loginButtonPressed: UIButton!
    
    @IBOutlet weak var registerButtonPressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirebaseApp.configure()
        let myDatabase = Database.database().reference()
        myDatabase.setValue("we have got data")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
    

}

