//
//  MyCustomViewController.swift
//  RnUseVCTest
//
//  Created by 위대연 on 2022/02/11.
//

import UIKit

class MyCustomViewController: UIViewController {
  
  @IBOutlet weak var randomView: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  @IBAction func randomBgButtonDidTouch(_ sender: UIButton) {
    self.randomView.backgroundColor = .random
  }
  
  @IBAction func dismisButtonDidTouch(_ sender: UIButton) {
    self.dismiss(animated: true) {
      
    }
  }
  
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}

