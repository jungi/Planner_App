//
//  ViewController.swift
//  Planner_App
//
//  Created by Jungi Kim on 2/4/15.
//  Copyright (c) 2015 jungikim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    var toDoList = [ToDoItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Class set up
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(TableViewCell.self, forCellReuseIdentifier: "cell")
        
        // No border & height
        tableView.separatorStyle = .None
        tableView.rowHeight = 50.0
        
        if (toDoList.count > 0) {
            return;
        }
        
        // Adding
        toDoList.append(ToDoItem(text: "Do task 1"))
        toDoList.append(ToDoItem(text: "Do task 2"))
        toDoList.append(ToDoItem(text: "Do task 3"))
        toDoList.append(ToDoItem(text: "Do task 4"))
    }

    // Initialize table
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // How many cells?
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    // Show each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as TableViewCell
        let item = toDoList[indexPath.row]
        cell.textLabel?.text = item.text
        cell.textLabel?.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    // Setting up the colors
    func colorForIndex(index: Int) -> UIColor {
        let itemCount = toDoList.count - 1
        let val = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: 1.0, green: val, blue: 0.0, alpha: 1.0)
    }
    
    // Setting the colors for the table
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
        forRowAtIndexPath indexPath: NSIndexPath) {
            cell.backgroundColor = colorForIndex(indexPath.row)
    }
 
}

