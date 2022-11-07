//
//  ViewController.swift
//  TrafficLight
//
//  Created by Vladimir Khalin on 07.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var changeColor = 0
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var trafficLightColor:[UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButton.layer.cornerRadius = 10
        
        for color in trafficLightColor {
            color.layer.cornerRadius = 50
            color.alpha = 0.3
        }
    }
    
    @IBAction func changeButtonDidTapped(_ sender: Any) {
        
        if changeColor == trafficLightColor.count { changeColor = 0}
        
        for color in trafficLightColor {
            color.alpha = 0.3
        }
        trafficLightColor[changeColor].alpha = 1
        changeColor += 1
        changeButton.setTitle( "NEXT", for: .normal)
    }
}

