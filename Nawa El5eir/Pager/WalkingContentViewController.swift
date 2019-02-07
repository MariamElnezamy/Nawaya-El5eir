//
//  WalkingContentViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/15/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit


class WalkingContentViewController: UIViewController {
    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    @IBOutlet var contentImageView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var forwardButton: UIButton!
    var index = 0
    var imageFile = ""
    var content = ""
    var heading = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.currentPage = index
        headingLabel.text = heading
        contentLabel.text = content
        contentImageView.image = UIImage(named: imageFile)
        
        switch index {
        case 0...1: forwardButton.setTitle("", for: .normal)
        case 2: forwardButton.setTitle("DONE", for: .normal)
        default: break
        }
    }
//    override func viewDidAppear(_ animated: Bool) {
//        if let pageViewController =
//            storyboard?.instantiateViewController(withIdentifier: "WalkthroughController")
//                as? WalkthroughPageViewController {
//            present(pageViewController, animated: true, completion: nil)
//        }
//    }

}
