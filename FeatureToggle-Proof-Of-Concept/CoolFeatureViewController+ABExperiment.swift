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
        case .B:
            buttonOnBottom()
        }
    }
    
    func buttonInTheMiddle() {
        bottomMarginActivateButtonConstraint.active = false
        centerLabelVerticallyConstraint.active = false
        
        centerActiveButtonVerticallyConstraint.active = true
        bottomLabelMarginConstraint.active = true
    }
    
    func buttonOnBottom() {
        bottomMarginActivateButtonConstraint.active = true
        centerLabelVerticallyConstraint.active = true
        
        centerActiveButtonVerticallyConstraint.active = false
        bottomLabelMarginConstraint.active = false
    }
}
