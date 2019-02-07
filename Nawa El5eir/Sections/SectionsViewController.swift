//
//  SectionsViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/16/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class SectionsViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate , UISearchBarDelegate {
    
    @IBOutlet var SearchBar: UISearchBar!

    
    var arr:[SectionIcon] = [SectionIcon(img: "sec1", name: "رياض اطفال اثاث"),SectionIcon(img: "sec2", name: "الاثاث المدرسي"),SectionIcon(img: "sec3", name: "قسم الالعاب"),SectionIcon(img: "sec4", name: "ركن التعايش الاسري")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (arr.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SectionCollectionViewCell
        cell.nameOfPic.text = arr[indexPath.row].name
        cell.image.image = UIImage(named: arr[indexPath.row].img)
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let DetailsOfVC = storyboard.instantiateViewController(withIdentifier: "DetailsSecViewController") as! DetailsSecViewController
//        
////        DetailsOfVC. = UIImage(named: arr[indexPath.row].img)
////        DetailsOfVC.nameD.text = arr[indexPath.row].name
//      //  DetailsOfVC.priceD = arr[indexPath.row].p
////        self.navigationController?.pushViewController(DetailsOfVC, animated: true)
//    }
//    

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
