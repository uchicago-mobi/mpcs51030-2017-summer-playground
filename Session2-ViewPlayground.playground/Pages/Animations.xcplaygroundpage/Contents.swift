//: [Previous](@previous)

import UIKit
import XCPlayground

//: # View Playground

import UIKit
import XCPlayground


//: ## Create a Container
//: Create a container view that represents iPhone 6 "screen".
//: This allows you to simulate add/removing/animating views on
//: a parent view (i.e. a view controller's main view)

let containerFrame = CGRect(x: 0, y: 0, width: 375, height: 667)
let containerView = UIView(frame: containerFrame)
containerView.backgroundColor = UIColor.lightGray

//: Set the playgrounds `liveView` to the container view
//: tell it to run indefinately
XCPlaygroundPage.currentPage.liveView = containerView
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

//: Add a green box to our container view
let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
greenView.backgroundColor = UIColor.green
containerView.addSubview(greenView)

//: Add a red box to our container view
let redView = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
redView.backgroundColor = UIColor.red
containerView.addSubview(redView)


//: Add a rotation transform to our red box view
UIView.animate(withDuration: 3.0, animations: { () -> Void in
  
    let rotationTransform = CGAffineTransform(rotationAngle: 3.14)
    redView.transform = rotationTransform
})


//: [Next](@next)
