//
//  FeatureTogglableDecorator+ViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension FeatureTogglableDecorator {
    
    class func decorate(viewController: ViewController) {
        viewController.decorate = { [weak viewController] in
            if FeatureDecisions.coolFeature() {
                viewController?.enableCoolFeature()
            }
            
            if FeatureDecisions.crazyFeature() {
                viewController?.enableCrazyFeature()
            }
            
            /* exluding features should *never* be done - this adds unnecessary complexity and is error prone */
            if FeatureDecisions.awesomeFeature() {
                viewController?.enableAwesomeFeature()
            } else if FeatureDecisions.amazingFeature() {
                viewController?.enableAmazingFeature()
            }
            
            if FeatureDecisions.colorfullAdvertisment() {
                /* Feature implemented externally - not as a part of View Controller.
                 Here I'm replacing only a part of the implementation. This i.e. could be more efficient algorithm 
                 that we want to test in the field */
                viewController?.loopFeatureInterval = 0.1
                viewController?.loopedFeature = {
                    
                    let r = CGFloat(Int(arc4random_uniform(256))) / 255.0
                    let g = CGFloat(Int(arc4random_uniform(256))) / 255.0
                    let b = CGFloat(Int(arc4random_uniform(256))) / 255.0
                    
                    viewController?.topLabel.textColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
                    viewController?.topLabel.text = "Colourfull Advertisment"
                    viewController?.topLabel.backgroundColor = UIColor(red: 1 - r, green: 1 - g, blue: 1 - b, alpha: 1.0)
                }
            }
            
        }
    }
    
}