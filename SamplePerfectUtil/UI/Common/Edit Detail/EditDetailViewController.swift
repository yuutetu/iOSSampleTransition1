//
//  EditDetailViewController.swift
//  SamplePerfectUtil
//
//  Created by 加賀江 優幸 on 2018/11/23.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class EditDetailViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    private var viewModel: EditDetailViewModel!

    static func viewController(viewModel: EditDetailViewModel) -> EditDetailViewController {
        let viewController = UIStoryboard.init(name: String(describing: EditDetailViewController.self), bundle: Bundle(for: self)).instantiateInitialViewController() as! EditDetailViewController
        viewController.viewModel = viewModel
        viewModel.output = viewController
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.setup()
    }

    // 本来はちゃんとViewModelをかませるべき・・・
    @IBAction func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}

extension EditDetailViewController: EditDetailViewModelOutput {
    func setText(text: String) {
        label.text = text
    }
}
