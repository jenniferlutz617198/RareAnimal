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
        let shareToFacebook: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        self.presentViewController(shareToFacebook, animated: true, completion: nil)
    }
        
        @IBAction func twitterButtonPushed(sender: UIButton) {
            let shareToTwitter: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            self.presentViewController(shareToTwitter, animated: true, completion: nil)
            
        }
        
        
        
}