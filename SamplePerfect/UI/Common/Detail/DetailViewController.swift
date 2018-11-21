//
//  DetailViewController.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    private var viewModel: DetailViewModel!

    static func viewController(viewModel: DetailViewModel) -> DetailViewController {
        let viewController = UIStoryboard.init(name: String(describing: DetailViewController.self), bundle: nil).instantiateInitialViewController() as! DetailViewController
        viewController.viewModel = viewModel
        viewModel.output = viewController
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.setup()
    }
}

extension DetailViewController: DetailViewModelOutput {
    func setText(text: String) {
        label.text = text
    }
}
