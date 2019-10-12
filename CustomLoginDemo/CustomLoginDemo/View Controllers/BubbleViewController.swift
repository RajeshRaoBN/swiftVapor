//
//  BubbleViewController.swift
//  CustomLoginDemo
//
//  Created by Rajesh Narayana Rao on 5/10/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class BubbleViewController: UIViewController {

    @IBOutlet weak var submitBubble: UIButton!
    @IBOutlet weak var innovation: UIButton!
    @IBOutlet weak var conservation: UIButton!
    @IBOutlet weak var social_impact: UIButton!
    @IBOutlet weak var environmental_impact: UIButton!
    @IBOutlet weak var cities: UIButton!
    @IBOutlet weak var biodiversity: UIButton!
    @IBOutlet weak var wildlife_animals: UIButton!
    @IBOutlet weak var sustainable_cities: UIButton!
    @IBOutlet weak var urbanisation: UIButton!
    @IBOutlet weak var future_design: UIButton!
    @IBOutlet weak var industry: UIButton!
    @IBOutlet weak var infrastructure: UIButton!
    @IBOutlet weak var economic_growth: UIButton!
    @IBOutlet weak var technology: UIButton!
    @IBOutlet weak var consumption: UIButton!
    @IBOutlet weak var entrepreneurship: UIButton!
    @IBOutlet weak var leadership: UIButton!
    @IBOutlet weak var financial_wellbeing: UIButton!
    @IBOutlet weak var entrepreneural_mindset: UIButton!
    @IBOutlet weak var self_development: UIButton!
    
    var topics: [String] = []
    var indexOfTopics = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpView()
        // Select an array of upto 5 topics and store it in firebase
    }
    
    func setUpView() {
        Utilities.styleFilledButton(submitBubble)
        Utilities.styleFilledButton1(innovation)
        Utilities.styleFilledButton2(conservation)
        Utilities.styleFilledButton3(social_impact)
        Utilities.styleFilledButton4(environmental_impact)
        Utilities.styleFilledButton5(cities)
        Utilities.styleFilledButton6(biodiversity)
        Utilities.styleFilledButton7(wildlife_animals)
        Utilities.styleFilledButton8(sustainable_cities)
        Utilities.styleFilledButton1(urbanisation)
        Utilities.styleFilledButton2(future_design)
        Utilities.styleFilledButton3(industry)
        Utilities.styleFilledButton4(infrastructure)
        Utilities.styleFilledButton5(economic_growth)
        Utilities.styleFilledButton6(technology)
        Utilities.styleFilledButton7(consumption)
        Utilities.styleFilledButton8(entrepreneurship)
        Utilities.styleFilledButton1(leadership)
        Utilities.styleFilledButton2(financial_wellbeing)
        Utilities.styleFilledButton3(entrepreneural_mindset)
        Utilities.styleFilledButton4(self_development)
    }
    
    @IBAction func submitBubbleTapped(_ sender: Any) {
        recordData()
    }
    
    @IBAction func innovationTapped(_ sender: Any) {
        topics[indexOfTopics] = "innovation"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func conservationTapped(_ sender: Any) {
        topics[indexOfTopics] = "conservation"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func social_impactTapped(_ sender: Any) {
        topics[indexOfTopics] = "social impact"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func environmental_impactTapped(_ sender: Any) {
        topics[indexOfTopics] = "environmental impact"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func citiesTapped(_ sender: Any) {
        topics[indexOfTopics] = "cities"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func biodiversityTapped(_ sender: Any) {
        topics[indexOfTopics] = "biodiversity"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func wildlife_animalTapped(_ sender: Any) {
        topics[indexOfTopics] = "wildlife/animals"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func sustainable_citiesTapped(_ sender: Any) {
        topics[indexOfTopics] = "sustainable cities"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func urbanisationTapped(_ sender: Any) {
        topics[indexOfTopics] = "urbanisation"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func future_designTapped(_ sender: Any) {
        topics[indexOfTopics] = "future design"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func industryTapped(_ sender: Any) {
        topics[indexOfTopics] = "industry"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func infrastructureTapped(_ sender: Any) {
        topics[indexOfTopics] = "infrastructure"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func economic_growthTapped(_ sender: Any) {
        topics[indexOfTopics] = "economic growth"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func technologyTapped(_ sender: Any) {
        topics[indexOfTopics] = "technology"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func consumptionTapped(_ sender: Any) {
        topics[indexOfTopics] = "consumption"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func entrepreneurshipTapped(_ sender: Any) {
        topics[indexOfTopics] = "entrepreneurship"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func leadershipTapped(_ sender: Any) {
        topics[indexOfTopics] = "leadership"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func financial_wellbeingTapped(_ sender: Any) {
        topics[indexOfTopics] = "financial wellbeing"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func entrepreneural_mindsetTapped(_ sender: Any) {
        topics[indexOfTopics] = "entrepreneural mindset"
        indexOfTopics+=1
        selectTopics()
    }
    
    @IBAction func self_developementTapped(_ sender: Any) {
        topics[indexOfTopics] = "self developement"
        indexOfTopics+=1
        selectTopics()
    }
    
    let db = Firestore.firestore()
            
    func selectTopics() {
        if indexOfTopics >= 5 {
            recordData()
        }
    }
    
    func recordData()  {
        if Auth.auth().currentUser != nil {
          // User is signed in.
          // ...
            let user = Auth.auth().currentUser
            let uid = user?.uid
            db.collection("topics_table").addDocument(data: ["uid": uid, "topics": topics]) { (error) in
                if error != nil {
                    print("Error uploading firestore")
                }
            }
            let newViewController = ProfileViewController()
            self.navigationController?.pushViewController(newViewController, animated: true)
//            var docs = db.collection("users").whereField("uid", isEqualTo: uid).getDocuments() { (querySnapshot, err) in
//                if let err = err {
//                    print("Error getting documents: \(err)")
//                } else {
//                    for document in querySnapshot!.documents {
//                        print("\(document.documentID) => \(document.data())")
//                    }
//                }
//            }
//            let data: [String: Any] = [
//                "topics": topics
//            ]
//            docs.setData({"topics": topics})
//            docs.updateData(data)
        }
    }

}
