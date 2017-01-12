//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kimar Arakaki Neves on 2015-11-24.
//  Copyright © 2015 Kimar Arakaki Neves. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(_ sender: UIButton) {
        label.text = "Hello, \(username.text!)"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        label.text = "Hello, \(username.text!)"
        
        return true
    }

}

