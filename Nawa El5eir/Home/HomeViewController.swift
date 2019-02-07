//
//  HomeViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/16/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate , UITextFieldDelegate{
    
    @IBOutlet var TxtSearchBar: UITextField!
    
    @IBOutlet var TableView: UITableView!


    var nameArr:[String] = ["صوفا ثنائي","كرسي المعلمة","صوفا مفرد"]
    var typeArr:[String] = ["كبير","متوسط","متوسط"]
    var priceArr:[String] = ["1,135,00 ر.س","135,00 ر.س","620.00 ر.س"]
    var imgArr:[String] = ["H1","H2","H3"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNavBarImage()
        
        let nibName1 = UINib(nibName: "Cell1OfHomeTableViewCell", bundle: nil)
        TableView.register(nibName1, forCellReuseIdentifier: "cell1")
        let nibName2 = UINib(nibName: "Cell2OfHomeTableViewCell", bundle: nil)
        TableView.register(nibName2, forCellReuseIdentifier: "cell2")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.item % 2 == 0) {
            let cell = TableView.dequeueReusableCell(withIdentifier: "cell1") as! Cell1OfHomeTableViewCell
            cell.commonInit(img2: imgArr[indexPath.item], name: nameArr[indexPath.item], price: priceArr[indexPath.item])
            cell.selectionStyle = .none
            return cell
        } else{
            let cell = TableView.dequeueReusableCell(withIdentifier: "cell2") as! Cell2OfHomeTableViewCell
            cell.commonInit(img2: imgArr[indexPath.item], name: nameArr[indexPath.item], price: priceArr[indexPath.item])
            cell.selectionStyle = .none

            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DetailsVC = storyboard.instantiateViewController(withIdentifier: "DetailsHomeViewController") as! DetailsHomeViewController

        DetailsVC.img = UIImage(named: imgArr[indexPath.row])!
        DetailsVC.Description = nameArr[indexPath.row]
        DetailsVC.Price = priceArr[indexPath.row]
        DetailsVC.Size = typeArr[indexPath.row]

        self.navigationController?.pushViewController(DetailsVC, animated: true)
    }
    


    func addNavBarImage() {
        
        let navController = navigationController!
        
        let image = UIImage(named: "logo")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2  - image!.size.width  / 2
        let bannerY = bannerHeight / 2 - image!.size.height  / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }

}
