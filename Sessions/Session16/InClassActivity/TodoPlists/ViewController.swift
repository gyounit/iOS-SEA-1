//
//  ViewController.swift
//  TodoPlists
//
//  Created by Rudd Taylor on 2/23/15.
//  Copyright (c) 2015 ga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UIAlertViewDelegate {

    var items: [String] = []
    var urlForDataStore: NSURL? {
        get {
            let filename = "todos.plist"
            if let documentsDirectory = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).last {
                return documentsDirectory.URLByAppendingPathComponent(filename)
            }
            return nil
        }
    }
    
    @IBAction func didTapAdd(sender: AnyObject) {
<<<<<<< HEAD
        let alert = UIAlertView(title: "Item Name?",
=======
        let alert =
        UIAlertView(title: "Item Name?",
>>>>>>> ga-students/master
            message: "Enter an item name",
            delegate: self,
            cancelButtonTitle: "Dismiss",
            otherButtonTitles: "Add")
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alert.show()
    }
    
    // MARK: - UIAlertView Delegate
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex != alertView.cancelButtonIndex {
            if let textInAlert = alertView.textFieldAtIndex(0)?.text {
                self.items.append(textInAlert)
                
                if let url = self.urlForDataStore {
                    (self.items as NSArray).writeToURL(url, atomically: true)
                }
                
                self.tableView.reloadData()
            }
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let url = self.urlForDataStore {
            if let array = NSArray(contentsOfURL: url) as? [String] {
                self.items = array
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell!
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        }
        let stringAtSpecifiedIndex = self.items[indexPath.row]
        cell.textLabel?.text = stringAtSpecifiedIndex
        return cell
    }
    
<<<<<<< HEAD
}

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
}

//THINK ABOUT - create new view controller (another ckass), you will want it to have a textview, make sure its delegate is set up correctly, and make sure it reads data from teh correct file


=======
    
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
>>>>>>> ga-students/master
