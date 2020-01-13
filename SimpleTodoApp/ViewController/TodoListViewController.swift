//
//  TodoListViewController.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    var itemList: [TodoItemViewModel] = []
    let todoListItemModel = TodoListItemModel()
    let selectedColor = GetSelectedColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemList = todoListItemModel.getTodoItems()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThingsToDoItemCell", for: indexPath)
        let item = itemList[indexPath.row]
        cell.textLabel?.text = item.thingsToDo
        
        // 優先度の高いもののみ太字にする
        if(item.priorityNumber == 2){
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
        }
        
        cell.contentView.backgroundColor = selectedColor.priorityColor(priorityNumber: item.priorityNumber)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = itemList[indexPath.row]
        let close = UIAlertAction(title: "確認", style: .default) { (action) in
            self.tableView.reloadData()
        }
        let doItem = UIAlertAction(title: "完了", style: .default) { (action) in
            self.todoListItemModel.deleteTodoItems(id:item.id)
            self.itemList.remove(at: indexPath.row)
            let indexPaths = [indexPath]
            tableView.deleteRows(at: indexPaths, with: .automatic)
        }
        let todoDetail = UIAlertController(title: item.thingsToDo, message: "優先度：" + item.priorityName, preferredStyle: .alert)
        todoDetail.addAction(close)
        todoDetail.addAction(doItem)
        present(todoDetail, animated: true, completion: nil)

    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let item = itemList[indexPath.row]
        todoListItemModel.deleteTodoItems(id:item.id)
        
        itemList.remove(at: indexPath.row)
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

