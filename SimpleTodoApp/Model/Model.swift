//
//  Model.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import Foundation

class todoItem {
    var id: Int
    var thingsToDo: String;
    var priorityName: String;
    var priorityNumber: Int;
    var runStatus:Bool = false;
    
    init(id: Int, thingsToDo: String, priorityName:String, priorityNumber: Int){
        self.id = id
        self.thingsToDo = thingsToDo
        self.priorityName = priorityName
        self.priorityNumber = priorityNumber
    }
}
