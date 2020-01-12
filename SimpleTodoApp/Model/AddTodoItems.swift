//
//  PutTodoItems.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import Foundation
import RealmSwift

class AddTodoItemModel {
    var todoItems: Results<TodoItem>!
    
    func getTodoItems(thingsToDo:String, priorityName:String, priorityNumber:Int){
        let realm = try! Realm()
        let item = TodoItem()
        
        item.thingsToDo = thingsToDo
        item.priorityName = priorityName
        item.priorityNumber = priorityNumber
        
        try! realm.write {
            realm.add(item)
        }
    }
}
