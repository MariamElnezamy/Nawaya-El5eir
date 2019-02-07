//
//  FilterViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/25/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class FilterHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func CheckBtn(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (success) in
            sender.isSelected = !sender.isSelected
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveLinear, animations: {
                sender.transform = .identity
                
            }, completion: nil)
        }
    }
    
    @IBAction func Closs(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
