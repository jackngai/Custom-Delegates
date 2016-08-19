//
//  ViewController.swift
//  Custom Delegates
//
//  Created by Jack Ngai on 8/18/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var toggleTextField: UITextField!
    @IBOutlet weak var enableTextField: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let priceDelegate = PriceDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set the delegates
        zipCode.delegate = zipCodeDelegate
        price.delegate = priceDelegate
        toggleTextField.delegate = self
    }

    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        guard enableTextField.on == true else {
            return false
        }
        return true
    }
    

    

    

}

