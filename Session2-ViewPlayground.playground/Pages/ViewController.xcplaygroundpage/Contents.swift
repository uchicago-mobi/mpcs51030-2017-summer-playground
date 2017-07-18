//:[Previous](@previous)

import UIKit
import PlaygroundSupport

//: Create a view controller
class VC: UIViewController {
  let newView = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .green
  }
  
  override func viewWillAppear(_ animated: Bool) {
    // View is going to appear
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    newView.frame = view.bounds
    newView.backgroundColor = .red
    UIView.transition(from: view,
                      to: newView,
      duration: 3.0,
      options: [.transitionCurlUp],
      completion: nil)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    // View is going to disappear
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    // View is gone
  }
}

//: 
//: 
//:
let vc = VC()

//: Set the playgrounds `liveView` to the container view
//: tell it to run indefinately
PlaygroundPage.current.liveView = vc
PlaygroundPage.current.needsIndefiniteExecution = true

