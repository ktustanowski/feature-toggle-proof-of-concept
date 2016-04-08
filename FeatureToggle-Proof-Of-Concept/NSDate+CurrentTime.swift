//
//  NSDate+CurrentTime.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import Foundation

extension NSDate {
    
    func currentTime() -> String {
        let formatter = NSDateFormatter()
        formatter.timeStyle = .LongStyle
        
        return formatter.stringFromDate(self)
    }
    
}
