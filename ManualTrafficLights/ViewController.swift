//
//  ViewController.swift
//  ManualTrafficLights
//
//  Created by Aleksandr Rybachev on 24.03.2021.
//

import UIKit

enum TrafficLights: String {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var changeLightButton: UIButton!
    
    private var currentLight = TrafficLights.red
    private let lightsOn: CGFloat = 1
    private let lightsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeLightButton.layer.cornerRadius = 10
        
        redLight.alpha = lightsOff
        yellowLight.alpha = lightsOff
        greenLight.alpha = lightsOff
        
        print("Размер стороны, доступный в методе viewDidLoad: \(redLight.frame.height)")
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
        print("Размер стороны, доступный в методе viewWillLayoutSubviews: \(redLight.frame.height)")
    }
    
    @IBAction func switchColorTrafficLight() {
        if changeLightButton.currentTitle == "START" {
            changeLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = lightsOn
            yellowLight.alpha = lightsOff
            greenLight.alpha = lightsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightsOff
            yellowLight.alpha = lightsOn
            greenLight.alpha = lightsOff
            currentLight = .green
        default:
            redLight.alpha = lightsOff
            yellowLight.alpha = lightsOff
            greenLight.alpha = lightsOn
            currentLight = .red
        }
    }
}

