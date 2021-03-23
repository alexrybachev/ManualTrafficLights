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
        
//        redTrafficLight.backgroundColor?.withAlphaComponent(0.3)
        
        changeLightButton.layer.cornerRadius = 10
    }

    @IBAction func switchColorTrafficLight() {
    }
    
}

