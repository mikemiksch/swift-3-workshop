//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by Mike Miksch on 3/8/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo {
    var identifier: String
    var text: String
    init(text: String) {
        self.text = text
        self.identifier = UUID().uuidString
    }
}


