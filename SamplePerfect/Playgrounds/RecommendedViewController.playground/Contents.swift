//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
@testable import SamplePerfectUtil


let coordinator = RootCoordinator { (viewController) in
    PlaygroundPage.current.liveView = viewController
}

coordinator.start()
