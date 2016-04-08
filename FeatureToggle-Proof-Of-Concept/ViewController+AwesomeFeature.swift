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
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(showAwesomeFeature(_:)))
        swipeGestureRecognizer.direction = .Left
        view.addGestureRecognizer(swipeGestureRecognizer)
        
        rightLabel.hidden = false
    }
    
    func showAwesomeFeature(recognizer: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("ShowAwesomeFeature", sender: nil)
    }
    
}
