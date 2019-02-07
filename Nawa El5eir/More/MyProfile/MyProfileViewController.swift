//
//  MyProfileViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/29/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate , UITableViewDelegate , UITableViewDataSource{
    
    
    var names:[String] = ["طلباتي","العناوين الخاصة بي","البلد واللغة"]
    var ids:[String] = ["MyOrders","Titles","city"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyProfileTableViewCell
        cell.name.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = ids[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        MyProf.layer.cornerRadius = 70
        self.MyView.layer.borderWidth = 2
        self.MyView.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBOutlet var MyView: UIView!
    
    @IBOutlet var MyProf: UIImageView!
    
    var img = UIImagePickerController()

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            MyProf.image = image
        }else{
            
        }
       self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func PickPic(_ sender: UIButton) {
        
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        
        self.present(image, animated: true)
        
    }
    
}
