//  This is a test
//  ViewController.swift
//  RareAnimal
//
//  Created by student3 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit
import Social
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var myImageView: UIImageView!
    var currentImage: UIImage!
    var picker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Rare Animal"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(importPicture))
        
    }
    func importPicture() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        presentViewController(picker, animated: true, completion: nil)
        
    }
    
    
    

    @IBAction func onTapped(sender: UIButton) {
    let actionsheet = UIAlertController(title: "Select image", message: nil, preferredStyle: .ActionSheet)
    actionsheet.popoverPresentationController?.sourceView = self.view
    actionsheet.popoverPresentationController?.sourceRect = CGRect(x: 0, y: self.view.frame.height, width: self.view.frame.width, height: 100)
    let cameraButton = UIAlertAction(title: "camera", style: .Default) { (action) in
        self.picker.sourceType = UIImagePickerControllerSourceType.Camera
        self.presentViewController(self.picker, animated: true, completion: nil)
    }
    actionsheet.addAction(cameraButton)
    let libraryButton = UIAlertAction(title: "library", style: .Default) { (action) in
        self.picker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(self.picker, animated: true, completion: nil)
    }
    actionsheet.addAction(libraryButton)
    presentViewController(actionsheet, animated: true, completion: nil)
    
}
    @IBAction func faceBookButtonPressed(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            facebookSheet.setInitialText("Share on FaceBook")
            self.presentViewController(facebookSheet, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a FaceBook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    @IBAction func twitterButtonPushed(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            facebookSheet.setInitialText("Share on Twitter")
            self.presentViewController(facebookSheet, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

    }
    
    
        
        
    }

    @IBAction func instagramButtonPushed(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            let instagramSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            instagramSheet.setInitialText("Share on Instagram")
            self.presentViewController(instagramSheet, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Instagram account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        

        
    }
    

}