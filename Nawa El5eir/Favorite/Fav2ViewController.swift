//
//  Fav2ViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/30/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class Fav2ViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate {
    
    
    var nameArr:[String] = ["صوفا ثنائي","كرسي المعلمة","صوفا مفرد"]
    var typeArr:[String] = ["كبير","متوسط","متوسط"]
    var priceArr:[String] = ["1,135,00 ر.س","135,00 ر.س","620.00 ر.س"]
    var imgArr:[String] = ["H1","H2","H3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FavTableViewCell
        cell.name.text = nameArr[indexPath.row]
        return cell
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
    }
    
    func addNavBarImage() {
        
        let navController = navigationController!
        
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - image!.size.width / 2
        let bannerY = bannerHeight - image!.size.height
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }


}
