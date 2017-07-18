//
//  ViewController.swift
//  PassThePig
//
//  Created by Andrew Binkowski on 1/30/17.
//  Copyright © 2017 Andrew Binkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  /// Presents a view controller that is not part of a segue
  @IBAction func showDetachedViewController(_ sender: UIButton) {
    
    let vc = storyboard?.instantiateViewController(withIdentifier:
      "DetachedViewController")
    
    self.present(vc!, animated: true) {
      print("Detached presented")
    }
    
  }
  
  
  //
  // MARK: - Lifecycle 
  //
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  
  //
  // MARK: - Navigation
  //

  /// The segue knows where it is going and loads ian the view controller.
  /// From here, we can access all the properties.  Remember that this
  /// happens before it is presented on the screen.
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let dvc = segue.destination as? DetailViewController
    dvc?.passedData = "Porky"
  }
  
  
  // Allow other view controllers to unwind to here
  @IBAction func unwindToRVC(sender: UIStoryboardSegue) {
    print("Back at RVC")
  }
  
}

