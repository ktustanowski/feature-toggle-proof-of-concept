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
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var topLabel: UILabel!
    
    var decorate: (() -> ())?
    
    var loopFeatureTimer: NSTimer?
    var loopedFeature: (() -> ())?
    var loopFeatureInterval = 1.0
    
    override func awakeFromNib() {
        FeatureTogglableDecorator.decorate(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        
        decorate?()
        
        startLoopFeatureTimer()
    }
    
    func initialSetup() {
        loopedFeature = {[weak self] in
            self?.topLabel.text = NSDate().currentTime()
        }
    }
    
    deinit {
        loopFeatureTimer?.invalidate()
    }
}

// MARK: Feature loop handling

extension ViewController {

    func startLoopFeatureTimer() {
        loopFeatureTimer = NSTimer.scheduledTimerWithTimeInterval(loopFeatureInterval, target: self, selector: #selector(timerLoopFinished(_:)), userInfo: nil, repeats: true)
    }

    func timerLoopFinished(timer: NSTimer) {
        loopedFeature?()
    }
    
}
