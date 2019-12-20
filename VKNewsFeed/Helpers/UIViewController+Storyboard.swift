//
//  UIViewController+Storyboard.swift
//  VKNewsFeed
//
//  Created by Hasan Akniyev on 18.12.2019.
//  Copyright © 2019 Hasan Akniyev. All rights reserved.
//

import UIKit

extension UIViewController {
    
    class func loadFromStoryboard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error: No initial view controller in the storyboard \(name)!")
        }
    }
    
}
