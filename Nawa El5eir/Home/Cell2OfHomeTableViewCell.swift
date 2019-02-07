//
//  Cell2OfHomeTableViewCell.swift
//  Nawa El5eir
//
//  Created by Admin on 1/17/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class Cell2OfHomeTableViewCell: UITableViewCell {

    @IBOutlet var Img2: UIImageView!
    @IBOutlet var name2: UILabel!
    @IBOutlet var price2: UILabel!
    
    func commonInit( img2:String ,  name:String , price:String)  {
        Img2.image = UIImage(named: img2)
        name2.text = name
        price2.text = price
    }
    
}
