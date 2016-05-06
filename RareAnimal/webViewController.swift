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
        
        myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://ctrlq.org/google/images/")!))
        
    }
    @IBAction func dismissBarButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true) { ()
            -> Void in
        }
    }
    @IBAction func shareBarButton(sender: UIBarButtonItem) {
        let actionsheet = UIAlertController(title: "Share to facebook, twitter, instagram,", message: nil, preferredStyle: .ActionSheet)
        actionsheet.popoverPresentationController?.sourceView = self.view
        actionsheet.popoverPresentationController?.sourceRect = CGRect(x: 0, y: self.view.frame.height, width: self.view.frame.width, height: 100)
        let faceBookButton = UIAlertAction(title: "FaceBook", style: .Default, handler: nil)
        actionsheet.addAction(faceBookButton)
        let twitterButton = UIAlertAction(title: "Twitter", style: .Default, handler: nil)
        actionsheet.addAction(twitterButton)
        let instagramButton = UIAlertAction(title: "Instagram", style: .Default, handler: nil)
        actionsheet.addAction(instagramButton)
    }
    
    
}

