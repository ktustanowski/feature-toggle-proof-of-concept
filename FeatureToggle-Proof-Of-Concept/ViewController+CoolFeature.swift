//
//  ViewController+CoolFeature.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension ViewController {
    
    func enableCoolFeature() {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(showCoolFeature(_:)))
        swipeGestureRecognizer.direction = .Up
        view.addGestureRecognizer(swipeGestureRecognizer)
        
        bottomLabel.hidden = false
    }
    
    func showCoolFeature(recognizer: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("ShowCoolFeature", sender: nil)
    }
    
}
