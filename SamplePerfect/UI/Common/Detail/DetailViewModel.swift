//
//  DetailViewModel.swift
//  SamplePerfect
//
//  Created by 加賀江優幸 on 2018/11/21.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

protocol DetailViewModelOutput: class {
    func setText(text: String)
}

class DetailViewModel {
    weak var output: DetailViewModelOutput?
    private let text: String

    init(text: String) {
        self.text = text
    }

    func setup() {
        output?.setText(text: text)
    }
}
