//
//  RootTabBarController.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

@IBDesignable class RootTabBarController: UITabBarController {
    enum TabItem: Int, CaseIterable {
        case recommended
        case new
        case myPage

        func viewController() -> UIViewController {
            switch self {
            case .recommended:
                let viewController = UIViewController()
                viewController.tabBarItem = UITabBarItem(title: "りんご", image: nil, selectedImage: nil)
                return viewController
            case .new:
                let viewController = UIViewController()
                viewController.tabBarItem = UITabBarItem(title: "バナナ", image: nil, selectedImage: nil)
                return viewController
            case .myPage:
                let viewController = MyPageViewController.viewController()
                viewController.tabBarItem = UITabBarItem(title: "ぶどう", image: nil, selectedImage: nil)
                return viewController
            }
        }
    }

    static func viewController() -> RootTabBarController {
        let viewController = UIStoryboard.init(name: String(describing: RootTabBarController.self), bundle: nil).instantiateInitialViewController() as! RootTabBarController
        return viewController
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTabItem()
    }

    // TODO: InterfaceBuilderに反映されてくれない・・・
    override func prepareForInterfaceBuilder() {
        setupTabItem()
    }

    private func setupTabItem() {
        viewControllers = TabItem.allCases.map{ $0.viewController() }
    }
}
