//
//  DetailViewController.swift
//  PassThePig
//
//  Created by Andrew Binkowski on 1/30/17.
//  Copyright © 2017 Andrew Binkowski. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  /// The label that will show the passed in data
  @IBOutlet weak var pigLabel: UILabel!
  
  /// Holds the data passed in; this will be accessed from 
  /// the segue
  var passedData: String?

  
  //
  // MARK: - Lifecycle
  //
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("1. View Did Load")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("2. View Will Appear")
    self.pigLabel.text = "View will appear"
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("3. View Did Appear")
    self.pigLabel.text = passedData
  }
  
  
  
}
