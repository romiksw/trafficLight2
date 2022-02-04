//
//  ViewController.swift
//  trafficLight2
//
//  Created by Roman Kozlov on 04.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
//    var activeLight = ActiveLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStartAlpha()
        setCornerRadius()
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if redLight.alpha == 0.3 {
            redLight.alpha = 1
        }
//        setStartAlpha()
//        if greenLight.alpha == 0.3 && yellowLight.alpha == 0.3 {
//            redLight.alpha = 1
//        } else if redLight.alpha == 1 {
//            redLight.alpha = 0.3
//            yellowLight.alpha = 1
//        } else if yellowLight.alpha == 1 {
//            yellowLight.alpha = 0.3
//            greenLight.alpha = 1
//        }
        
//        switch activeLight {
//        case .red:
//            redLight.alpha = 1
//            activeLight = .yellow
//        case .yellow:
//            yellowLight.alpha = 1
//            activeLight = .green
//        case .green:
//            greenLight.alpha = 1
//            activeLight = .red
//        }
    }
    
    func setStartAlpha() {
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    func setCornerRadius() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        startButton.layer.cornerRadius = 15
    }
    
//    enum ActiveLight {
//        case red
//        case yellow
//        case green
//    }
}

