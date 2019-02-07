//
//  MoreViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/16/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate {
    
    
    var names:[String] = ["الصفحة الشخصية","من نحن","اتصل بنا","تسجيل دخول"]
    var ids:[String] = ["A","B","C","ViewController"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoreTableViewCell
        cell.name.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = ids[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
  
    @IBOutlet var TxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
    }
    
    @IBAction func LoginBtnAct(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DetailsVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! LoginViewController
        self.navigationController?.pushViewController(DetailsVC, animated: true)
        
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
