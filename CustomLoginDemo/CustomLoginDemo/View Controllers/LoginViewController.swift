//
//  LoginViewController.swift
//  CustomLoginDemo
//
//  Created by Rajesh Narayana Rao on 1/10/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func showError(message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }

    func setUpElements() {
        
        // Hide error label
        errorLabel.alpha = 0
        
        // Style the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(loginButton)
    }
    
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        
        // Check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character and a number"
        }
        
        return nil
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        // Validate the fields
        let error = validateFields()
                
        if error != nil {
                    
                    // There is something wrong in the fields, show error message
                self.showError(message: error!)
        }
        else {
                    
                // Create cleaned version of data
                let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
                let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Signing in the user
                Auth.auth().signIn(withEmail: email, password: password) { (result, err) in
                                    
                // Check for errors
                if err != nil {
                    // There was an error in creating the user
                    self.showError(message: "Error creating user")
                }
                else {
                    

                    // Transition to the home screen
                    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                            
                    self.view.window?.rootViewController = homeViewController
                    self.view.window?.makeKeyAndVisible()
                }
            }
        }
       
    }
        
    
    
}
