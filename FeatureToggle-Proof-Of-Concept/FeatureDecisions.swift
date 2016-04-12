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

    static func crazyFeature() -> Bool {
        return toggleRouter.crazyFeature ?? false
    }

    static func colorfullAdvertisment() -> Bool {
        return toggleRouter.colorfullAdvertisment ?? false
    }

    /* 
     * Amazing feature and Awesome feature are exclusive - this can be done but - word of advice - shouldn't
     * because this adds another layer of complexity which is error prone because we have to maintain i.e.
     * a feature graph to know which features are exclusive.
     */
    static func amazingFeature() -> Bool {
        guard !awesomeFeatureEnabledOnRouter() else { return false }
        
        return amazingFeatureEnabledOnRouter()
    }
    
    static func amazingFeatureEnabledOnRouter() -> Bool {
        return toggleRouter.amazingFeature ?? false
    }
    
    static func awesomeFeature() -> Bool {
        guard !amazingFeatureEnabledOnRouter() else { return false }
        
        guard let awesomeFeatureEnabled = toggleRouter.awesomeFeature,
            ratio = toggleRouter.awesomeFeatureCanaryRatio
            where awesomeFeatureEnabled
        else {
            return awesomeFeatureEnabledOnRouter()
        }
        
        let randomNumber = Double(Int(arc4random_uniform(11))) / 10.0
        return  ratio >= randomNumber
    }
    
    static func awesomeFeatureEnabledOnRouter() -> Bool {
        return toggleRouter.awesomeFeature ?? false
    }

}