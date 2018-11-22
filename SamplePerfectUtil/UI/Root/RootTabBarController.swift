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
                let viewController = RecommendedViewController.viewController(viewModel: RecommendedViewModel())
                // DefaultのNavigationControllerをここで差し込んでいるの微妙そう。
                // でも、アプリ内で使用するNavigationControllerは共通化すべきな気がするから良いか。
                let navigationController = UINavigationController(rootViewController: viewController)
                navigationController.tabBarItem = UITabBarItem(title: "りんご", image: nil, selectedImage: nil)
                return navigationController
            case .new:
                let viewController = NewViewController.viewController()
                let navigationController = UINavigationController(rootViewController: viewController)
                navigationController.tabBarItem = UITabBarItem(title: "バナナ", image: nil, selectedImage: nil)
                return navigationController
            case .myPage:
                let viewController = MyPageViewController.viewController()
                let navigationController = UINavigationController(rootViewController: viewController)
                navigationController.tabBarItem = UITabBarItem(title: "ぶどう", image: nil, selectedImage: nil)
                return navigationController
            }
        }
    }

    static func viewController() -> RootTabBarController {
        let viewController = UIStoryboard.init(name: String(describing: RootTabBarController.self), bundle: Bundle(for: self)).instantiateInitialViewController() as! RootTabBarController
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

    // WARN: 今は使われていないが、これが出来る
    func chengeTo(tabItem: TabItem) {
        selectedIndex = tabItem.rawValue
    }
}
