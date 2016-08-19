//
//  PriceDelegate.swift
//  Custom Delegates
//
//  Created by Jack Ngai on 8/18/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import Foundation
import UIKit

class PriceDelegate: NSObject, UITextFieldDelegate{
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //Create a formatter to format Strings into decimals as casting to Double fails after 6 digits
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        
        //Assign text field to text to edit the String
        var text = textField.text!
        
        //Remove "$" from string
        let dollarSign = text.removeAtIndex(text.startIndex)
        if dollarSign == "$"{
            
            //Format string to decimal NSNumber, cast NSNumber to Double
            var number = Double(formatter.numberFromString(text)!)
            
            //Change formatter to currency
            formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            
            //If field started with zero, set string to number (after dividing by 100 and casting), else add to numbeer (this can be refactored)
            if number == 0{
               number = Double(string)! / 100.00
                textField.text = formatter.stringFromNumber(number)
                return false
            } else {
                 number *= 10
                 let digit = Double(string)! / 100.00
                 number += digit
                 textField.text = formatter.stringFromNumber(number)
                return false
            }
            
        }
        return true
    }
}