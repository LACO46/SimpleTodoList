//
//  GetTodoItems.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import Foundation

class GetTodoItemModel {
    func getTodoItems() -> [todoItem] {
        // クロージャーを書く
        let item1: todoItem = todoItem(id: 1, thingsToDo: "宿題をする", priorityName: "低", priorityNumber:0)
        let item2: todoItem = todoItem(id: 2, thingsToDo: "牛乳を買う", priorityName: "中", priorityNumber:1)
        let item3: todoItem = todoItem(id: 3, thingsToDo: "手紙を書く", priorityName: "高", priorityNumber:2)
        
        return [item1, item2, item3]
    }
}
