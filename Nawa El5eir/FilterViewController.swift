//
//  FilterViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/27/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    
    
    @IBAction func Cross(_ sender: Any) {
                dismiss(animated: true, completion: nil)

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

}
