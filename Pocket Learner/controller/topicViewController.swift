//
//  topicViewController.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/26/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import UIKit
import RealmSwift
import ChameleonFramework

class topicViewController: UITableViewController {
    let realm = try! Realm()
    var topicArray = ["Quants","Logical","verbal","Programming","General Knowledge"]
    @IBOutlet var searchBar: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0

      
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicArray.count
    }
    
    //MARK : -> display data in topic view cell
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        cell.textLabel?.text = topicArray[indexPath.row]
        cell.backgroundColor = UIColor.flatWatermelon()
        cell.textLabel?.textColor = UIColor.flatWhite()
        return cell

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToSubtopic", sender: self)
    }
 }




