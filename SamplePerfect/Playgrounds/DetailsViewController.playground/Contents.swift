//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
@testable import SamplePerfectUtil

let viewModel = DetailViewModel(text: "sample")
let viewController = DetailViewController.viewController(viewModel: viewModel)

PlaygroundPage.current.liveView = viewController
