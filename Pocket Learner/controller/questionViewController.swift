//
//  questionViewController.swift
//  
//
//  Created by Hitendra Dubey on 12/26/17.
//

import UIKit

class questionViewController: UIViewController {
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        self.navigationItem.hidesBackButton = true
        logoutButton.isEnabled = true
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

}
