//
//  MyCustomShadowTF.swift
//  Nawa El5eir
//
//  Created by Admin on 2/6/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import Foundation
import UIKit

class MyCustomShadowTF: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 7.0
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
        self.layer.shadowOffset = CGSize(width: -3, height: 3)
        self.layer.shadowOpacity = 1.0
    }
}
