//
//  ToDoItem.swift
//  Planner_App
//
//  Created by Jungi Kim on 2/4/15.
//  Copyright (c) 2015 jungikim. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    var text: String
    var done: Bool
    
    init(text: String) {
        self.text = text
        self.done = false
    }
    
    
}
