//
//  FormViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 2/6/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit
import iOSDropDown

class FormViewController: UIViewController {
    
    
    @IBOutlet var dropDown: DropDown!
    @IBOutlet var dropDownCity: DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dropDownType
        
        dropDown.optionArray = ["ذكر","أنثى"]
       dropDown.optionIds = [1,23,54,22]
        dropDown.didSelect{(selectedText , index ,id) in
            self.dropDown.text = "Selected String: \(selectedText) \n index: \(index)"
            print("You just select: \(selectedText) at index: \(index)")
        }
        self.dropDown.showList()
        self.dropDown.hideList()
        
        
        // dropDownCity
        
        dropDownCity.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
        dropDownCity.placeholder = "اختار مدينتك..."
        dropDownCity.optionArray = ["Mexico", "USA", "England", "France", "Germany", "Spain", "Italy", "Canada"]
        dropDownCity.didSelect { (option, index ,id)  in
            self.dropDownCity.text = "You just select \(option) at index: \(index)"
            print("You just select: \(option) at index: \(index)")
        }
        self.dropDown.showList()
        self.dropDown.hideList()
        
        
    }
    
   
   

}
