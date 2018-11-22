//
//  RecommendedViewModel.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

protocol RecommendedViewModelOutput: class {
    func updatedCellModels()
    func didSelect(cellModel: String)
    func accessoryButtonTapped(cellModel: String)
}

class RecommendedViewModel: NSObject {
    weak var output: RecommendedViewModelOutput?

    // TODO: しっかりTableViewCellModelにする
    // TODO: ここにApiRequestをWrapできるように、UseCase層相当のものにしたい。そう考えるとpixivアプリのDataSource層は限定的なUseCase+Repository+DataStore層なのかもしれない
    var cellModels: [String] = [] {
        didSet {
            output?.updatedCellModels()
        }
    }
}

extension RecommendedViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "A") ?? UITableViewCell.init(style: .default, reuseIdentifier: "A") // TODO: ちゃんとしたカスタムセルにする
        cell.textLabel?.text = cellModels[indexPath.row] // TODO: ViewModelを渡すだけにしたい。Section対応したい。
        cell.accessoryType = .detailButton
        return cell
    }
}

extension RecommendedViewModel: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output?.didSelect(cellModel: cellModels[indexPath.row]) // TODO: Section対応したい。
    }

    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        output?.accessoryButtonTapped(cellModel: cellModels[indexPath.row]) // TODO: Section対応したい。
    }
}
