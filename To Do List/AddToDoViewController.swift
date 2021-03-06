//
//  AddToDoViewController.swift
//  To Do List
//
//  Created by Carmelle Jean-Paul on 4/29/18.
//  Copyright © 2018 Carmelle Jean-Paul. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()

    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        toDo.name = taskTextField.text!
        toDo.important = importantSwitch.isOn
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    
}
