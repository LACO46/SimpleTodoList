//
//  DeleteTodoItems.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import Foundation
import RealmSwift

class DeleteTodoItemModel {
    var todoItems: Results<TodoItemModel>!
    
    func deleteTodoItems(id: Int) {
        let realm = try! Realm()
//        print(todoItems)
//        try! realm.write{
//           realm.delete(todoItems[id])
//        }
    }
}
