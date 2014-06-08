//
//  FirstViewController.swift
//  ToDo
//
//  Created by GuoFeng Lu on 6/8/14.
//  Copyright (c) 2014 Gphon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // return to view   
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }

}

