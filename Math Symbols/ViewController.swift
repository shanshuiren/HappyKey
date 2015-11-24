//
//  ViewController.swift
//  Math Symbols
//
//  Created by Ryan on 2/7/15.
//  Copyright (c) 2015 MathJoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myTextField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        super.touchesEnded(touches, withEvent: event)
        self.view.endEditing(true);
//        for family in UIFont.familyNames() as [String]
//        {
//            println("\(family)")
//            
//            for name in UIFont.fontNamesForFamilyName(family)
//            {
//                println("   \(name)")
//            }
//        }
    }
}

