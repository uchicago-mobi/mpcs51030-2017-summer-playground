//
//  GroundhogView.swift
//  GroundhogDay
//
//  Created by T. Andrew Binkowski on 2/8/16.
//  Copyright © 2016 The University of Chicago, Department of Computer Science. All rights reserved.
//

import UIKit

class ProgressView: UIView {
  
  //
  // MARK: - Initialization
  //
  
  override init (frame : CGRect) {
    super.init(frame : CGRect.zero)
    self.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    self.isUserInteractionEnabled = false
    
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  //
  // MARK: - Lifecyle
  //
  override func didMoveToSuperview() {
    
    // Figure out if we're presenting or dismissing
    if let superview = superview {
      print("adding box")
      
      frame = superview.frame
      
      let square = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
      square.backgroundColor = UIColor.red
      square.center = superview.center
      square.isUserInteractionEnabled = true
      square.alpha = 1.0
      
      let singleTap = UITapGestureRecognizer(target: self, action: #selector(ProgressView.singleTapBackground(_:)))
      square.addGestureRecognizer(singleTap)
      
      
      let dummyView = UIView(frame: self.frame)
    self.addSubview(dummyView)
    
      dummyView.addSubview(square)
      
      
    } else {
      print("Dismissing")
    }
  }
  
  // MARK: - Tap
 func singleTapBackground(_ sender: UITapGestureRecognizer) {
    print("Tap Progress View")
    self.removeFromSuperview()
  }
  
}
