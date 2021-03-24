//
//  ViewController.swift
//  ManualTrafficLights
//
//  Created by Aleksandr Rybachev on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTrafficLight: UIView!
    @IBOutlet weak var orangeTrafficLight: UIView!
    @IBOutlet weak var greenTrafficLight: UIView!
    
    
    @IBOutlet weak var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.layer.cornerRadius = 50
        redTrafficLight.alpha = 0.3
        orangeTrafficLight.layer.cornerRadius = 50
        orangeTrafficLight.alpha = 0.3
        greenTrafficLight.layer.cornerRadius = 50
        greenTrafficLight.alpha = 0.3
               
        changeLightButton.layer.cornerRadius = 10
    }

    @IBAction func switchColorTrafficLight() {
        changeLightButton.setTitle("NEXT", for: .normal)
        
        redTrafficLight.alpha = 1.0
        
        if redTrafficLight.alpha == 0.3, orangeTrafficLight.alpha == 0.3 {
            
        }

        
        
        
        
    }
    
}

