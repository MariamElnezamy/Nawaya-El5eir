//
//  ViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/15/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
 
    @IBAction func login(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func FaceBookBtnAct(_ sender: Any) {
        let ActivityVC = UIActivityViewController(activityItems: ["www.Facebook.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)

    }
    
    
    @IBAction func twitterBtnAct(_ sender: Any) {
        let ActivityVC = UIActivityViewController(activityItems: ["www.Twitter.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
    }
    
    @IBAction func GoogleBtnAct(_ sender: Any) {
        let ActivityVC = UIActivityViewController(activityItems: ["www.Google.com"], applicationActivities: nil)
        
        ActivityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(ActivityVC, animated: true, completion: nil)
    }
    
    
}

