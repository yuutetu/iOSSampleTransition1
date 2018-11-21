//
//  RootCoordinator.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class RootCoordinator {
    let window: UIWindow
    private var tabBarController: RootTabBarController!

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        tabBarController = RootTabBarController.viewController()
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
}


