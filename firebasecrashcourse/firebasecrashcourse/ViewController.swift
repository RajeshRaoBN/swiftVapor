//
//  ViewController.swift
//  firebasecrashcourse
//
//  Created by Rajesh Narayana Rao on 27/9/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ref = Database.database().reference()
        
//        ref.child("someid/name").setValue("Mike")
        
//        ref.childByAutoId().setValue(["name": "Rajesh", "role": "admin", "age": 30])
        
//        ref.child("someid/name").observeSingleEvent(of: .value){
//            (snapshot) in
//            let employeedata = snapshot.value as? [String:Any]
            
//        ref.child("someid/name").setValue("John")
        
//        let updates = ["someid/name": "john", "-LpqSwEUsKLa0VER06UE/name":"David"]
//
//        ref.updateChildValues(updates)
//
//        }
        
        ref.child("someid").removeValue()
        
    }


}

