//
//  ViewController.swift
//  CoreDataProject
//
//  Created by Rudd Taylor on 9/12/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    var appDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let animal = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: appDelegate.managedObjectContext) as? Animal {
            animal.name = "Rabbit"
            print(animal)
            appDelegate.saveContext()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        let fetch = NSFetchRequest(entityName: "Animal")
        if let animals: [Animal] = (try? appDelegate.managedObjectContext.executeFetchRequest(fetch)) as? [Animal] {
            for animal in animals {
                print(animal.name)
            }
        }
    }
}

