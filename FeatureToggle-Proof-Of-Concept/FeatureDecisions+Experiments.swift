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
}

extension FeatureDecisions {
    
    static func abTest() -> ABTestGroup? {
        guard let experimentEnabled = toggleRouter.abExperiment,
            ratio = toggleRouter.abExperimentRatio
            where experimentEnabled
        else {
            return nil
        }

        let randomNumber = Double(Int(arc4random_uniform(11))) / 10.0
        return ratio >= randomNumber ? .A : .B
    }
    
}