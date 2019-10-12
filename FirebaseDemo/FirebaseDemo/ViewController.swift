//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Rajesh Narayana Rao on 28/9/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let db = Firestore.firestore()
        // db.collection("wine").addDocument(data: ["year":2017, "type":"pinot-noir", "label":"Peller Estates"])
        
//        let newDocument = db.collection("wine").document()
//        newDocument.setData(["year":2017, "type": "Siraz", "label":"De-Bolti Estate", "id": newDocument.documentID])
        
        //db.collection("wine").document("pinot-noir-2017").setData(["hello":"new data", "newKey":"newValue"])
        db.collection("wine").addDocument(data: ["test" : "test"]) { (error) in
            if let error = error{
                print(error)
            }
            else {
                print("no error")
            }
        }
    }


}

