//
//  ToggleRouter.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import Foundation


struct ToggleRouter {
    
    var coolFeature: Bool?
    
    var awesomeFeature: Bool?
    var awesomeFeatureCanaryRatio: Double?
    
    var abExperiment: Bool?
    var abExperimentRatio: Double?
    
    init() {
        configureFromLocalSource()
    }
    
    mutating func configureFromLocalSource() {
        guard let togglesPath = NSBundle.mainBundle().pathForResource("Toggles", ofType: "plist"),
            toggles = NSDictionary(contentsOfFile: togglesPath)
            else {
                return
        }
        
        coolFeature = toggles["cool_feature"] as? Bool
        
        awesomeFeature = toggles["awesome_feature"] as? Bool
        awesomeFeatureCanaryRatio = toggles["awesome_feature_canary_ratio"] as? Double
        
        abExperiment = toggles["ab_experiment"] as? Bool
        abExperimentRatio = toggles["ab_experiment_ratio"] as? Double
    }
    
}