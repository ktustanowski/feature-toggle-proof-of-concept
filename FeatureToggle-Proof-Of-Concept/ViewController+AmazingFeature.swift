//
//  ViewController+AmazingFeature.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension ViewController {
    
    func enableAmazingFeature() {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(showAmazingFeature(_:)))
        swipeGestureRecognizer.direction = .Left
        view.addGestureRecognizer(swipeGestureRecognizer)
        
        rightLabel.hidden = false
    }
    
    func showAmazingFeature(recognizer: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("ShowAmazingFeature", sender: nil)
    }
    
}
