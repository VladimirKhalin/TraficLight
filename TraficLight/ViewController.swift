//
//  ViewController.swift
//  TraficLight
//
//  Created by Vladimir Khalin on 07.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var changeColor = 0
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var trafickLightColor:[UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for color in trafickLightColor {
            color.layer.cornerRadius = 50
            color.alpha = 0.3
        }

        changeButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeButtonDidTapped(_ sender: Any) {
        
        if changeColor == trafickLightColor.count { changeColor = 0}
        
        for color in trafickLightColor {
            color.alpha = 0.3
        }
        trafickLightColor[changeColor].alpha = 1
        changeColor += 1
        changeButton.setTitle( "NEXT", for: .normal)
    }
}

