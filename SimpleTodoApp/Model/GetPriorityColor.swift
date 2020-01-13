//
//  GetPriorityColor.swift
//  SimpleTodoApp
//
//  Created by 都築誉史 on 2020/01/12.
//  Copyright © 2020 都築誉史. All rights reserved.
//

import UIKit
import Foundation

class GetSelectedColor {
    func priorityColor(priorityNumber: Int) -> UIColor {
        switch priorityNumber {
        case 1:
            return UIColor.yellow
        case 2:
            return UIColor.systemPink
        default:
            return UIColor.white
        }
    }
}
