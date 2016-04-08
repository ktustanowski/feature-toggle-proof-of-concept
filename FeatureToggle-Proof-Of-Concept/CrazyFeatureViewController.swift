//
//  CrazyFeatureViewController.swift
//  FeatureToggle-Proof-Of-Concept
//
//  Created by Kamil Tustanowski on 08.04.2016.
//  Copyright © 2016 ktustanowski. All rights reserved.
//

import UIKit

class CrazyFeatureViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let firstViewController = itemViewController() else { return }
        dataSource = self
        
        setViewControllers([firstViewController], direction: .Forward, animated: true, completion: nil)
    }
    
}

extension CrazyFeatureViewController: UIPageViewControllerDataSource {

    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        return itemViewController()
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {

        return itemViewController()
    }
    
    func itemViewController() -> UIViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let itemViewController = storyboard.instantiateViewControllerWithIdentifier("AmazingFeatureViewController") as? UITabBarController else { return nil }
        
        let randomIdentifier = String(Int(arc4random_uniform(256)))
        itemViewController.viewControllers?.forEach { viewController in
            guard let viewController = viewController as? IdentifiableViewController else { return }
            
            
            viewController.identification = randomIdentifier
        }
        
        return itemViewController
    }
        
}