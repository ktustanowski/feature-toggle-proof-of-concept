//
//  FeatureDecisions+Experiments.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import Foundation

enum ABTestGroup {
    case A
    case B
    case Disabled
}

extension FeatureDecisions {
    
    func abTest() -> ABTest {
        guard let ratio = toggleRouter.abExperimentRatio else { return .Disabled }
    }
    
}