//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Alex on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentLight = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 75
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = 75
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 75
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
    }
    
    
    
    @IBAction func startButtonPressed() {
        currentLight += 1

        switch currentLight {
        case 1:
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
        case 2:
            yellowLightView.alpha = 1.0
            redLightView.alpha = 0.3
        case 3:
            greenLightView.alpha = 1.0
            yellowLightView.alpha = 0.3
        default:
            break
        }
        
        if currentLight == 3 {
            currentLight = 0
        }
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
    }
}

