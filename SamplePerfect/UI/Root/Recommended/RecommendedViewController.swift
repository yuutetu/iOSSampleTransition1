//
//  RecommendedViewController.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class RecommendedViewController: UIViewController {
    static func viewController() -> RecommendedViewController {
        let viewController = UIStoryboard.init(name: String(describing: RecommendedViewController.self), bundle: nil).instantiateInitialViewController() as! RecommendedViewController
        return viewController
    }
}
