//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Mike Miksch on 3/9/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func closeButtonPressed(  sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let userText = textField.text {
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        
        dismiss(animated: true, completion: nil)
        
        return true
    }

}
