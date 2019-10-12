//
//  ViewController.swift
//  BullseyeUIK
//
//  Created by Rajesh Narayana Rao on 23/9/19.
//  Copyright © 2019 Rajesh Narayana Rao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    var score: Int = 0
    var round: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")    // UIImage(named: "SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")    // UIImage(named: "SliderThumb-Normal")!
                slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftImage, for: .normal)
        
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightImage, for: .normal)
        
    }
    
    @IBAction func showAlert() {
        
        
        
        // print("Hello")
        
        let message = "The value of the slider is now: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        
        
        var difference: Int = 0
        difference = abs(currentValue - targetValue)
        let points: Int = 100 - difference
        if points == 100 {
            title = "Perfect"
            score += 100
        } else if points == 99 {
            title = "You almost had it!"
            score += 50
        } else if points > 95 {
            title = "You almost had it!"
        } else if points > 90 {
            title = "Pretty good"
        } else {
            title = "Not even close"
        }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        score = score + points
        
        // startNewRound()
    }
    
//    @IBAction func showAlert2() {
//            // print("Hello")
//
//            let alert = UIAlertController(title: "Knock! Knock!", message: "Who is There?", preferredStyle: .alert)
//
//            let action = UIAlertAction(title: "Little Old Lady", style: .default, handler: nil)
//
//            alert.addAction(action)
//
//            present(alert, animated: true, completion: nil)
//        }

    @IBAction func sliderMoved(slider: UISlider) {
        // print("The value of the slider is now: \(slider.value)")
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        round += 1
        roundLabel.text = String(round)
        scoreLabel.text = String(score)
        targetValue = Int.random(in: 1...100)
        targetLabel.text = String(targetValue)
        currentValue = 50
        slider.value = Float(currentValue)
        
    }
    
    @IBAction func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }

}

