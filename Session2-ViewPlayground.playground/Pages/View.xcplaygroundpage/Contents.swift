//: # View Playground

import UIKit
import PlaygroundSupport



//: ## Create a Container
//: Create a container view that represents iPhone 6 "screen".
//: This allows you to simulate add/removing/animating views on
//: a parent view (i.e. a view controller's main view)

let containerFrame = CGRect(x: 0, y: 0, width: 375, height: 667)
let containerView = UIView(frame: containerFrame)
containerView.backgroundColor = UIColor.lightGray



//: Set the playgrounds `liveView` to the container view
//: tell it to run indefinately
PlaygroundPage.current.liveView = containerView
PlaygroundPage.current.needsIndefiniteExecution = true


//: Add a green box to our container view
let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
greenView.backgroundColor = UIColor.green
containerView.addSubview(greenView)

//: Add a red box to our container view
let redView = UIView(frame: CGRect(x: 50.0, y: 50.0, width: 100.0, height: 100.0))
redView.backgroundColor = UIColor.red
containerView.addSubview(redView)

//: ## Circle
//: Note that we are setting the x and y to 0.0.  At 
//: this point we do not care where the view is 
//: posititioned.  We are going to position it using 
//: the `center` property later
let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0
circle.backgroundColor = UIColor.orange

// Add the view to the containerView
containerView.addSubview(circle);
