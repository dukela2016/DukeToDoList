//
//  ViewController.swift
//  Todoey
//
//  Created by MacDuke on 12/1/20.
//  Copyright © 2020 MacDuke. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogrogon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    //MARK - tableview Datasource Methods
    //Set up ToDoItems in cells of table.
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    //detect which row is detected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print out corresponding row index
//        print(indexPath.row)
//          print(itemArray[indexPath.row])
        
        // Add checkmark when cell selected
        // condition to remove checkmark if there's already a checkmark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    
        
        //flash gray briefly when click on row
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

