//
//  DetailsHomeViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/20/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class DetailsHomeViewController: UIViewController  {
    
    var details = Details(name: "", type: "", price: "", image: "")
    
    
    var img = UIImage()
    var Description = String()
    var Price = String()
    var Size = String()


    @IBOutlet var DImg: UIImageView!
    @IBOutlet var TheDescription: UILabel!
    @IBOutlet var ThePrice: UILabel!
    @IBOutlet var TheSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DImg.image = img
        TheDescription.text = Description
        ThePrice.text = Price
        TheSize.text = Size
    }
    
    @IBAction func FavBtn(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        }) { (success) in
            sender.isSelected = !sender.isSelected
            UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
                sender.transform = .identity
                
            }, completion: nil)
        }
    }

    
    @IBAction func AddBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Fav2ViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
