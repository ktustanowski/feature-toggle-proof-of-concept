//
//  FeatureTogglableDecorator.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import Foundation

class FeatureTogglableDecorator {
        
    class func decorate(viewController: ViewController) {
        viewController.decorate = {
            if (FeatureDecisions.coolFeature()) {
                viewController.enableCoolFeature()
            }
            
            if (FeatureDecisions.awesomeFeature()) {
                viewController.enableAwesomeFeature()
            }
        }
    }
    
//    class func decorate(viewController: CoolFeatureViewController) {
//        print("Decorated MVC")        
//    }
//
//    class func decorate(viewController: AwesomeFeatureViewController) {
//        print("Decorated MVC")
//    }
}