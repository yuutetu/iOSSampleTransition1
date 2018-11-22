//
//  EditDetailViewModel.swift
//  SamplePerfectUtil
//
//  Created by 加賀江 優幸 on 2018/11/23.
//  Copyright © 2018 加賀江優幸. All rights reserved.
//

import UIKit

protocol EditDetailViewModelOutput: class {
    func setText(text: String)
}

class EditDetailViewModel {
    weak var output: EditDetailViewModelOutput?
    private let text: String

    init(text: String) {
        self.text = text
    }

    func setup() {
        output?.setText(text: text)
    }
}
