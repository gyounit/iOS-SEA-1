//
//  ViewController.swift
//  Todo
//
//  Created by Rudd Taylor on 1/21/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    var todoViewController: MainTableViewController?
    
    @IBAction func didTapButton(sender: AnyObject) {
        if let text = textField.text,
            todoViewController = todoViewController {
                todoViewController.todos.insert(Todo(name: text, status: TaskStatus.Incomplete, dueDate: NSDate()), atIndex: 0)
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         self.textField.delegate = self
        
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserverForName(UIKeyboardDidShowNotification,
            object: nil,
            queue: nil) { (notification: NSNotification) -> Void in
                // This code runs when "foo!" is posted
                self.textField.backgroundColor = UIColor.redColor()
        }
        
    }
    
    func textFieldDidBeginEditing(textFieldThatEdited: UITextField) {
       var someIntegerThatIsGreat = 1
        someIntegerThatIsGreat = 5
        textField.placeholder = "email@domain.com"
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //dismiss keyboard
    textField.resignFirstResponder()
        didTapButton(textField)
        return true
        
        
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

