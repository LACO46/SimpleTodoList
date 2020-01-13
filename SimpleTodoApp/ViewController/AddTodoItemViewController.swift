//
//  AddTodoItemViewController.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import UIKit
import Foundation

class AddTodoItemViewController: UIViewController {
    let selectedColor = GetSelectedColor()
    @IBOutlet weak var thingsToDoFiled: UITextField!
    @IBOutlet weak var priorityFiled: UISegmentedControl!
    
    @IBAction func cancelAddTodoItem(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func saveAddTodoItem(_ sender: UIBarButtonItem) {
        let addTodoItemModel = AddTodoItemModel()
        self.navigationController?.popToRootViewController(animated: true)
        addTodoItemModel.getTodoItems(thingsToDo: thingsToDoFiled.text!, priorityName: priorityFiled.titleForSegment(at: priorityFiled.selectedSegmentIndex)!, priorityNumber: priorityFiled.selectedSegmentIndex)
    }
    
    @IBAction func prioritySelecter(_ sender: UISegmentedControl) {
        let color = self.selectedColor.priorityColor(priorityNumber: priorityFiled.selectedSegmentIndex)
        priorityFiled.selectedSegmentTintColor = color
    }
}
