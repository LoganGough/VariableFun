//
//  ViewController.swift
//  VariableFun
//
//  Created by LOGAN GOUGH on 8/26/24.
//

import UIKit

//steps to get return key to dismiss keyboard
//1) add a delegate
//2) attatch delegate to textfield
//3) write textFieldShouldReturn function

class ViewController: UIViewController, UITextFieldDelegate {
    let pony = 6 // constant declared and initialized(type inference)
    var dog = 7.5// declare and initialize variable
    var cat: Int?// declaring an optional(could be nil)
    var horse: Double!// declaring a non optional(cant be nil)
    var ant: String = ""// declaring a variable(must initialize in init)
    var git = true
    
    var home = false
    
    @IBOutlet weak var textField1: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.delegate = self
        
        print(Double(pony) + dog)
        
        // force unwrap with !
        //print(cat! + 5)
        
        //safely unrwapping cat
        if let blah = cat{
            print(blah + 5)
            print("cat is " + String(blah))
            print("cat is \(blah)")// String interpolation
        }
        else{
            print("nothing in cat")
        }
        
    }

    
    @IBAction func button1(_ sender: UIButton) {
        //get text out of textfield
        var pig = textField1.text!
        // nil coalescing(giving a default value if it is nil)
        var frog = Int(pig) ?? 0
        print(frog + 5)
        textField1.resignFirstResponder()//makes keyboard dissapear aafter pressing button
    }
    
    
    // function automatically gets caled when user hits return on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
    }
    

}

