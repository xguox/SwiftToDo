//
//  SecondViewController.swift
//  ToDo
//
//  Created by GuoFeng Lu on 6/8/14.
//  Copyright (c) 2014 Gphon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func btnSave_Click(sender: UIButton) {
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtDesc.text = ""
        txtTask.text = ""
        self.tabBarController.selectedIndex = 0
    }
    
    // iOS touch func
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

    // UITextField  Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

