//
//  subTopic.swift
//  Pocket Learner
//
//  Created by Hitendra Dubey on 12/28/17.
//  Copyright © 2017 Hitendra Dubey. All rights reserved.
//

import Foundation
import RealmSwift

class Subtopic : Object
{
    @objc dynamic var subtopicName = ""
    @objc dynamic var done = false
  //  let parentTopic = LinkingObjects(fromType: Topic.self, property: "subTopic")
}
