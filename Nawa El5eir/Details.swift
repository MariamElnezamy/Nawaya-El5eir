//
//  Details.swift
//  Nawa El5eir
//
//  Created by Admin on 1/20/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import Foundation
class Details {
    
    var name = ""
    var price = ""
    var type = ""
    var image = ""
    init(name: String, type: String, price:String , image: String )
    {
        self.name = name
        self.type = type
        self.image = image
        self.price = price
    }
    
}
