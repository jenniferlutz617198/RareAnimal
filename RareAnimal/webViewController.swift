//
//  webViewController.swift
//  RareAnimal
//
//  Created by student3 on 5/3/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://www.google.com")!
        let request = NSURLRequest(URL: URL)
        myWebView.loadRequest(request)


        
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
