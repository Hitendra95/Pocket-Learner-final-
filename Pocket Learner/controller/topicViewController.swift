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
    //let realm = try! Realm()
    var indexPath1 : IndexPath?
    var topicArray = ["Quants","Logical","verbal","Programming","General Knowledge","Engeenering","Economics","Current Affairs"]
    //var topicArray : Results<Topic>?
    @IBOutlet var searchBar: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //loadData()
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
        indexPath1 = indexPath
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSubtopics"
        {
            let destinationVC = segue.destination as! subtopicViewController
            if let indexPath = tableView.indexPathForSelectedRow
            {
                destinationVC.selectedTopic = topicArray[indexPath.row]

            }
        }
        
    }
//    func savedata()
//    {
//        let topic = Topic()
//        topic.topicName = "Quants"
//        do
//        {
//            try realm.write {
//                realm.add(topic)
//            }
//        }
//        catch{
//            print("error in saving data in realm\(realm)")
//        }
//    }
//    func loadData()
//    {
//            
//            topicArray = realm.objects(Topic.self)
//            tableView.reloadData()
//    }
        
 }




