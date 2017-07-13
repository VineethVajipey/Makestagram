//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Vineeth on 7/12/17.
//  Copyright © 2017 Vineeth. All rights reserved.
//

import UIKit

    let photoHelper = MGPhotoHelper()

    class MainTabBarController: UITabBarController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            photoHelper.completionHandler = { image in
                PostService.create(for: image)
            }
            
            delegate = self
            tabBar.unselectedItemTintColor = .black
        }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            photoHelper.presentActionSheet(from: self)
            return false
        }
        
        return true
    }
}
