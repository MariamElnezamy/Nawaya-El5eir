//
//  Cell1OfHomeTableViewCell.swift
//  Nawa El5eir
//
//  Created by Admin on 1/17/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class Cell1OfHomeTableViewCell: UITableViewCell {

    
    @IBOutlet var Img1: UIImageView!
    @IBOutlet var name1: UILabel!
    @IBOutlet var price1: UILabel!
    
    
    func commonInit( img2:String ,  name:String , price:String)  {
        Img1.image = UIImage(named: img2)
        name1.text = name
        price1.text = price
    }
    
}
