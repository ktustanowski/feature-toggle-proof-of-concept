//
//  AwesomeFeatureViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

class AwesomeFeatureViewController: IdentifiableViewController, Togglable {
    
    var decorate: (() -> ())?
    
    override func awakeFromNib() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}