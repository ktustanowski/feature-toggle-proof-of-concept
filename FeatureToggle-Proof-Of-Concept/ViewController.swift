//
//  ViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 07.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Togglable {

    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    var decorate: (() -> ())?
    
    override func awakeFromNib() {
        FeatureTogglableDecorator.decorate(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decorate?()
    }

}
