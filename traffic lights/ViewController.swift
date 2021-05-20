//
//  ViewController.swift
//  traffic lights
//
//  Created by macbook on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
// MARK: - IB Outlets
    @IBOutlet weak var colorView: UIStackView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
   @IBOutlet weak var startButton: UIButton!
    
    enum ColorOptions {
        case red
        case yellow
        case green
        case off
    }

    var colorOption = ColorOptions.off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        redView.layer.cornerRadius = redView.frame.height / 2
        redView.clipsToBounds = true
        
        
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        yellowView.clipsToBounds = true
        
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = greenView.frame.height / 2
        greenView.clipsToBounds = true
        
    }

    @IBAction func tappedStart() {
        
        switch colorOption {
        case .red:
            startButton.setTitle("Next", for: .normal)
            
            greenView.alpha = 0.3
            yellowView.alpha = 0.3
            redView.alpha = 1
            
            colorOption = .yellow
        case .yellow:
            startButton.setTitle("Next", for: .normal)
           
            redView.alpha = 0.3
            yellowView.alpha = 1
            redView.alpha = 0.3
            
            colorOption = .green
        case .green:
            startButton.setTitle("Next", for: .normal)
            
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            
            colorOption = .green
        case .off:
            colorOption = .red
        }
    }
    
}

