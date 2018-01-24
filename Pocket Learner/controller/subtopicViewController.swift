//
//  subtopicViewController.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/26/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import UIKit
import Firebase
import ChameleonFramework

class subtopicViewController: UITableViewController {
    var tickMark : Bool = false
    var selectedTopic : String = ""
   var subTopicArray = ["TSD,M&W,P&L"]
    override func viewDidLoad() {
        super.viewDidLoad()
        SubTopicArray()
       // print(topicno)

       
    }
    override func viewWillAppear(_ animated: Bool) {
        title = selectedTopic
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subTopicArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subTopicCell", for: indexPath)
        cell.textLabel?.text = subTopicArray[indexPath.row]
        cell.backgroundColor = UIColor.flatMint()
        cell.textLabel?.textColor = UIColor.flatBlack()
        tableView.reloadData()
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let cell = tableView.dequeueReusableCell(withIdentifier: "subTopiccell", for: indexPath)
        if tickMark == false
        {
            cell.accessoryType = .checkmark
            tickMark = true
        }
        else
        {
            cell.accessoryType = .none
            tickMark = false
        }
        
    }
    func SubTopicArray()
    {
        
            switch selectedTopic {
            
            case "Quants":
                subTopicArray = ["Time and Work","Time Speed Distance","Calender","Profit and Loss"]
            
            case "Logical":
                subTopicArray = ["Number Series" , "Statement And Assumptions"]
            
            case "Verbal":
                subTopicArray = ["sentence correction", "Grammer", "Tense"]
            

            default:
                subTopicArray = ["no topic"]
            }
        
        
        
        
    }

   

}
