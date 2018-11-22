//
//  MyPageViewController.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {
    static func viewController() -> MyPageViewController {
        let viewController = UIStoryboard.init(name: String(describing: MyPageViewController.self), bundle: Bundle(for: self)).instantiateInitialViewController() as! MyPageViewController
        return viewController
    }
}
