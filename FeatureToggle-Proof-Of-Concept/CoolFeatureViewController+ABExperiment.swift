//
//  CoolFeatureViewController+ABExperiment.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

extension CoolFeatureViewController {
        
    func performAbTest(group: ABTestGroup) {
        switch group {
        case .A:
            buttonInTheMiddle()
            yellowButtonTitleColor()
        case .B:
            buttonOnBottom()
            buttonWithBackground()
        }
    }
    
    func buttonInTheMiddle() {
        bottomMarginActivateButtonConstraint.active = false
        centerLabelVerticallyConstraint.active = false
        
        centerActiveButtonVerticallyConstraint.active = true
        bottomLabelMarginConstraint.active = true
    }
    
    func yellowButtonTitleColor() {
        self.view.tintColor = UIColor.yellowColor()
    }
    
    func buttonOnBottom() {
        bottomMarginActivateButtonConstraint.active = true
        centerLabelVerticallyConstraint.active = true
        
        centerActiveButtonVerticallyConstraint.active = false
        bottomLabelMarginConstraint.active = false
    }
    
    func buttonWithBackground() {
        self.view.tintColor = self.view.backgroundColor
        self.activateCoolStuffButton.backgroundColor = UIColor.yellowColor()
    }

}
