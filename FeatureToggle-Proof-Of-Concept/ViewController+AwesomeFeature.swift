//
//  ViewController+AwesomeFeature.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension ViewController {
    
    func enableAwesomeFeature() {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(swipedLeft(_:)))
        swipeGestureRecognizer.direction = .Left
        view.addGestureRecognizer(swipeGestureRecognizer)
        
        rightLabel.hidden = false
    }
    
    func swipedLeft(recognizer: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("ShowAwesomeFeature", sender: nil)
    }
    
}
