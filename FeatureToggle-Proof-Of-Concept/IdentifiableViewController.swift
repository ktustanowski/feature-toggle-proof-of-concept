//
//  IdentifiableViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

class IdentifiableViewController: DismissableViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    
    var identification: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let identification = identification where !identification.isEmpty {
            topLabel.text = identification
            topLabel.hidden = false
        }
    }
    
}