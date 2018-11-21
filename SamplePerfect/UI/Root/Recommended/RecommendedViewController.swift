//
//  RecommendedViewController.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

class RecommendedViewController: UIViewController, RecommendedViewModelOutput {
    @IBOutlet weak var tableView: UITableView!
    private var viewModel: RecommendedViewModel!

    static func viewController(viewModel: RecommendedViewModel) -> RecommendedViewController {
        let viewController = UIStoryboard.init(name: String(describing: RecommendedViewController.self), bundle: nil).instantiateInitialViewController() as! RecommendedViewController
        viewController.viewModel = viewModel
        viewModel.output = viewController
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // setup
        viewModel.output = self
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
        // APIとか叩いた後に
        viewModel.cellModels = ["1", "2", "3", "4", "5", "6", "7", "8"]
    }

    // TODO: しっかりappend, removeなども対応できるようにしたい
    func updatedCellModels() {
        tableView.reloadData()
    }

    func didSelectCellModel(cellModel: String) {
        let viewModel = DetailViewModel(text: cellModel)
        let viewController = DetailViewController.viewController(viewModel: viewModel)
        present(viewController, animated: true, completion: nil)
    }
}
