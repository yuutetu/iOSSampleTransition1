import UIKit
import PlaygroundSupport
@testable import SamplePerfectUtil

let viewModel = EditDetailViewModel(text: "sample")
let viewController = EditDetailViewController.viewController(viewModel: viewModel)

PlaygroundPage.current.liveView = viewController
