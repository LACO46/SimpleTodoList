//
//  GetTodoItems.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import Foundation
import RealmSwift

class GetTodoItemModel {
    var todoItems: Results<TodoItem>!
    
    func getTodoItems() -> [todoItem] {
        let realm = try! Realm()
        todoItems = realm.objects(TodoItem.self)
        return todoItems.map{
            return todoItem(id: $0.id, thingsToDo: $0.thingsToDo, priorityName: $0.priorityName, priorityNumber:$0.priorityNumber)
        }
    }
}
