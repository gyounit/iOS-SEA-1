//
//  ViewController2ViewController.swift
//  programatic autolayout
//
//  Created by Greg Young on 1/19/16.
//  Copyright © 2016 Tedi Konda. All rights reserved.
//

//Programmatically create elements needed for login (username, password, login button, and label for the title at the top.
    //When login button is pressed, print a message with print.
    //Bonus 1: Create a main subview that will container all of the above elements.
    //Bonus 2: Make the subview the size of the superview.
    //Bonus 3: When user logs in add another UIView with the success message and a cancel button, which removes the UI View



import UIKit

class ViewController2ViewController: UIViewController {

        
        var userName = UITextField()
        var password = UITextField()
        var loginButton = UIButton()
        var label = UILabel()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            createuserName()
            createpassword()
            createloginButton()
            createlabel()
           
            //Do any additional setup after loading the view
            self.view.layoutIfNeeded()
            
            UIView.animateWithDuration(1, animations: {
                self.view.layoutIfNeeded()
            })
        }
    
    
    //Create userName

    func createuserName() {
        userName.backgroundColor = UIColor.greenColor()
        
        //add a subview
        self.view.addSubview(userName)
        userName.backgroundColor = UIColor.blueColor()
        userName.translatesAutoresizingMaskIntoConstraints = false
        
        
        //creating the constraint object
        var leftUserNameConstraint =
        NSLayoutConstraint(item: userName,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20)
        
        var topUserNameConstraint =
        NSLayoutConstraint(item: userName,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 20)
        
        
        var rightUserNameConstraint =
        NSLayoutConstraint(item: userName,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: -20)
        
        var bottomUserNameConstraint =
        NSLayoutConstraint(item: userName,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 50)

        
        
        //need to add it to the superview so it will be effective
        self.view.addConstraint(leftUserNameConstraint)
        
        //it needs a frame to show up in; you can also set it up with layout constraints
        
        
        
    }
    
    func createpassword() {
        password.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(password)
    }
    
    
    func createloginButton () {
        loginButton.backgroundColor = UIColor.yellowColor()
        
        self.view.addSubview(loginButton)
    }
    
    func createlabel () {
        label.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(label)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }
            
    
        // Need to add subview before adding constraints
        //self.view.addSubview(body)
        
        // Default to use autoconstraint
        //body.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints for the body
       // let bodyWidth = NSLayoutConstraint(
//            item: self.body,
//            attribute: NSLayoutAttribute.Width,
//            relatedBy: NSLayoutRelation.Equal,
//            // if you set a static attribute - the toItem is set to nil
//            toItem: self.head,
//            attribute: NSLayoutAttribute.Width,
//            multiplier: 0.5,
//            constant: 0.0)
    

        // Do any additional setup after loading the view.
    //}

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
