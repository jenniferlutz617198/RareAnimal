//
//  webViewController.swift
//  RareAnimal
// jjjjjj
//  Created by student3 on 5/3/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit
import Social

class webViewController: UIViewController {
    
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://ctrlq.org/google/images/")!))
        
    }
    @IBAction func dismissBarButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true) { ()
            -> Void in
        }
    }
    @IBAction func shareBarButton(sender: UIBarButtonItem) {
            
        }
    
    
}

