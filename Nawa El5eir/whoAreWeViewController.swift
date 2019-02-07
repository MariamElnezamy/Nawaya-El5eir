//
//  whoAreWeViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/28/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class whoAreWeViewController: UIViewController {

    @IBOutlet var img1: UIImageView!
    @IBOutlet var img2: UIImageView!
    @IBOutlet var img3: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img1.layer.cornerRadius = img1.frame.size.width/2
        img2.layer.cornerRadius = img2.frame.size.width/2
        img3.layer.cornerRadius = img3.frame.size.width/2
    }
}
