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
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func webviewDidStartLoad(_ : UIWebView){
            ActivityIndicator.startAnimating()
            
            NSLog("The webview is starting to load")
        }
        myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "http://ctrlq.org/google/images/")!))
    }
    
    func webviewDidFinishLoad(_ : UIWebView){
        ActivityIndicator.stopAnimating()
        ActivityIndicator.hidden=true;
        NSLog("The webview is done loading")
    }
    func webView(webView: UIWebView!, didFailLoadWithError error: NSError!) {
        ActivityIndicator.stopAnimating()
        ActivityIndicator.hidden=true;
        print("Webview fail with error \(error)");
    }
    @IBAction func dismissBarButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true) { ()
            -> Void in
        }
        
    }
    
    
}