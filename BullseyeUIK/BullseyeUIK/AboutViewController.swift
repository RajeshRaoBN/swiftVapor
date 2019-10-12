//
//  AboutViewController.swift
//  BullseyeUIK
//
//  Created by Rajesh Narayana Rao on 25/9/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//

import UIKit
//import WebKit

class AboutViewController: UIViewController {
    
    //@IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
//            let url = URL(fileURLWithPath: htmlPath)
//            let request = URLRequest(url: url)
//            webView.load(request)
//        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
