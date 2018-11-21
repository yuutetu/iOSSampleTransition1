//
//  NewViewController.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    static func viewController() -> NewViewController {
        let viewController = UIStoryboard.init(name: String(describing: NewViewController.self), bundle: nil).instantiateInitialViewController() as! NewViewController
        return viewController
    }
}
