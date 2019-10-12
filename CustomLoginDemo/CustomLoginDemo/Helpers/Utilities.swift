//
//  Utilities.swift
//  customauth
//
//  Created by Christopher Ching on 2019-05-09.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    
    static func styleTextField(_ textfield:UITextField) {
        
        // Create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        // Remove border on text field
        textfield.borderStyle = .none
        
        // Add the line to the text field
        textfield.layer.addSublayer(bottomLine)
        
    }
    
    static func styleFilledButton(_ button:UIButton) {
        
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    static func styleFilledButton1(_ button:UIButton) {
            
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 119/255, green: 129/255, blue: 47/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton2(_ button:UIButton) {
                
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 21/255, green: 115/255, blue: 157/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton3(_ button:UIButton) {
                    
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 79/255, green: 160/255, blue: 236/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton4(_ button:UIButton) {
                        
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 255/255, green: 213/255, blue: 82/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton5(_ button:UIButton) {
                            
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 165/255, green: 203/255, blue: 69/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton6(_ button:UIButton) {
                                
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 98/255, green: 142/255, blue: 188/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton7(_ button:UIButton) {
                                    
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 143/255, green: 81/255, blue: 57/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleFilledButton8(_ button:UIButton) {
                                    
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 255/255, green: 116/255, blue: 31/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
}
