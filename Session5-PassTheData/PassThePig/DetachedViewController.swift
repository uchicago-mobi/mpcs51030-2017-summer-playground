//
//  DetachedViewController.swift
//  PassThePig
//
//  Created by Andrew Binkowski on 1/30/17.
//  Copyright © 2017 Andrew Binkowski. All rights reserved.
//

import UIKit

class DetachedViewController: UIViewController {
  
  
  /// Remove the view controller from the screen
  @IBAction func tapToDismiss(_ sender: UIButton) {
    self.dismiss(animated: true) {
      print("Done dismissing")
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
}
