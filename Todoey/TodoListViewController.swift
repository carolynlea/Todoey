//
//  ViewController.swift
//  Todoey
//
//  Created by Carolyn Lea on 8/9/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Pick up penguin","give penguin bath","feed penguin","put a bow on the penguin","tell the penguin a story"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: - DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell 
    }

    // MARK: - Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

//ToDoItemCell
