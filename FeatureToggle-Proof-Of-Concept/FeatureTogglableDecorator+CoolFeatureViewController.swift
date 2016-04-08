//
//  FeatureTogglableDecorator+CoolFeatureViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension FeatureTogglableDecorator {
    
    class func decorate(viewController: CoolFeatureViewController) {
        viewController.decorate = {
            if let group = FeatureDecisions.abTest() {
                viewController.performAbTest(group)
            }
        }
    }
    
}