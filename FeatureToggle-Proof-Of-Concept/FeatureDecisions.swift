//
//  FeatureDecisions.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import Foundation

struct FeatureDecisions {
    
    static var toggleRouter = ToggleRouter()
    
    static func coolFeature() -> Bool {
        return toggleRouter.coolFeature ?? false
    }

    static func amazingFeature() -> Bool {
        return toggleRouter.amazingFeature ?? false
    }

    static func crazyFeature() -> Bool {
        return toggleRouter.crazyFeature ?? false
    }

    static func colorfullAdvertisment() -> Bool {
        return toggleRouter.colorfullAdvertisment ?? false
    }

    static func awesomeFeature() -> Bool {
        guard let awesomeFeatureEnabled = toggleRouter.awesomeFeature,
            ratio = toggleRouter.awesomeFeatureCanaryRatio
            where awesomeFeatureEnabled
        else {
            return toggleRouter.awesomeFeature ?? false
        }
        
        let randomNumber = Double(Int(arc4random_uniform(11))) / 10.0
        return  ratio >= randomNumber
    }
    
}