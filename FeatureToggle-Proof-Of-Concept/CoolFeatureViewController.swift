//
//  CoolFeatureViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

class CoolFeatureViewController: DismissableViewController, Togglable {
    
    var decorate: (() -> ())?
    
    @IBOutlet weak var bottomMarginActivateButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var centerActiveButtonVerticallyConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var centerLabelVerticallyConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomLabelMarginConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        FeatureTogglableDecorator.decorate(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decorate?()
    }
    
}