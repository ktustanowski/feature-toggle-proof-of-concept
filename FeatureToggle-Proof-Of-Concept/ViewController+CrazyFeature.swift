//
//  ViewController+CrazyFeature.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension ViewController {
    
    func enableCrazyFeature() {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(showCrazyFeature(_:)))
        swipeGestureRecognizer.direction = .Right
        view.addGestureRecognizer(swipeGestureRecognizer)
        
        bottomLabel.hidden = false
    }
    
    func showCrazyFeature(recognizer: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("ShowCrazyFeature", sender: nil)
    }
    
}
