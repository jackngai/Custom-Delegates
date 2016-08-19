//
//  ZipCodeDelegate.swift
//  Custom Delegates
//
//  Created by Jack Ngai on 8/18/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate:NSObject, UITextFieldDelegate{
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if range.location > 4 {
            return false
        }
        return true
    }
    
}
