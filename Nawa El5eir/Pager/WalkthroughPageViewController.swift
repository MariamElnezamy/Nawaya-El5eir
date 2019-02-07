//
//  WalkthroughPageViewController.swift
//  Nawa El5eir
//
//  Created by Admin on 1/15/19.
//  Copyright © 2019 mariamelnezamy. All rights reserved.
//

import UIKit

class WalkthroughPageViewController:  UIPageViewController,
UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkingContentViewController).index
        index -= 1
        return contentViewController(at: index)
    }
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkingContentViewController).index
        index += 1
        return contentViewController(at: index)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the data source to itself
        dataSource = self
        // Create the first walkthrough screen
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward,
                               animated: true, completion: nil)
        }
    }
    
    var pageHeadings = ["تصفح المتجر الالكتروني", "التدقيق والطلب", "الشحن والتوصيل"]
    var pageImages = ["pager1", "pager2", "pager3"]
    var pageContent = ["تصفح المتجر الالكتروني واختر مشترياتك. المتجر مصمم ليظهر لك المنتجات بشكل بسيط وبدون تعقيد ويمكنك تخصيص طريقة البحث من خلال مستوي الاسعار او فئة المنتجات. وخلال التصفح يمكنك اضافة كل مشترياتك الي سلة التسوق.","عند الإنتهاء من التسوق يمكنك الإنتقال الى صفحة التدقيق والطلب, قم بتدقيق مشترياتك وتأكد أنها مطابقة لما تود شراءه من ناحية الكم والخصائص بعد ذلك قم بتعبئة بيانات الشخصية المطلوبة وقم بإرسال الطلب. بعد ذلك قم بالتحويل البنكي الى رقم حسابنا وضمن رقم الطلب في التحويل.","بعد أن تقوم بالطلب سيصلك ايميل تأكيد بنجاح عملية إتمام الطلب, سنقوم بإعداد الطلب والتواصل معك لتحديد توقيت التسليم المناسب لك دائما يمكنك إلغاء الطلب أو تعديلة بمراسلتنا أو اللإتصال بنا هاتفياً"]
    
    func contentViewController(at index: Int) -> WalkingContentViewController?
    {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }
        // Create a new view controller and pass suitable data.
        if let pageContentViewController =
            storyboard?.instantiateViewController(withIdentifier:
                "WalkingContentViewController") as? WalkingContentViewController {
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.content = pageContent[index]
            pageContentViewController.index = index
            return pageContentViewController
        }
        return nil
    }

    func forward(index: Int) {
        if let nextViewController = contentViewController(at: index + 1) {
            setViewControllers([nextViewController], direction: .forward, animated:
                true, completion: nil)
        }
    }
    
//    @IBAction func nextButtonTapped(sender: UIButton) {
//        switch index {
//        case 0...1:
//            let pageViewController = parent as! WalkthroughPageViewController
//            pageViewController.forward(index: index)
//        case 2:
//            dismiss(animated: true, completion: nil)
//        default: break
//        }
//    }
  
}
