//
//  RootCoordinator.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

public class RootCoordinator {
    let startClosure: ((UIViewController) -> Void)?
    private lazy var tabBarController: RootTabBarController = {
        return RootTabBarController.viewController()
    }()

    public init(startClosure: ((UIViewController) -> Void)?) {
        self.startClosure = startClosure
    }

    public func start() {
        startClosure?(tabBarController)
    }

    // For URL Scheme
    func changeTo(tab: RootTabBarController.TabItem) {
        tabBarController.chengeTo(tabItem: tab)
    }
}


