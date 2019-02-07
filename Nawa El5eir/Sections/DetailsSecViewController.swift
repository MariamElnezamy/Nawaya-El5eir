//
//  DetailsSecViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/24/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class DetailsSec {
    var name:String=""
    var Img:String=""
    init(name:String,Img:String) {
        self.Img=Img
        self.name=name
    }
}

class DetailsSecViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
    
    var arr:[DetailsSec]=[DetailsSec(name: "طاولة اللعب بالماء", Img: "طاولة اللعب بالماء"),
                          DetailsSec(name: "وحدة تخزين", Img: "وحدة تخزين"),
                          DetailsSec(name: "وحدين تخزين", Img: "وحدين تخزين"),
                          DetailsSec(name: "كرسى بلاستيك", Img: "كرسى بلاستيك")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DetailsSecCollectionViewCell
        cell.Img.image = UIImage(named: arr[indexPath.row].Img)
        cell.name.text = arr[indexPath.row].name
        return cell
    }
    

    
    
    var details:Details!




    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}
