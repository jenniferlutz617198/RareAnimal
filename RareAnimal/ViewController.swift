//  This is a test
//  ViewController.swift
//  RareAnimal
// hi
//  Created by student3 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//  https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKitFunctionReference/index.html#//apple_ref/c/func/UIImageWriteToSavedPhotosAlbum
import UIKit
import Social
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMessageComposeViewControllerDelegate {
    
    @IBOutlet weak var myImageView: UIImageView!
    var currentImage: UIImage!
    var picker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        title = "Rare Animal"
        
    
        }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
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
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
            let socialController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            //socialController.addImage() Look up what to put the image to be
            //socialController.addURL()   Look up the URL
            
            self.presentViewController(socialController, animated: true, completion: nil)
        }
        
        if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
            if(SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)){
            let socilaController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            // socialController.addImage()
            // socialController.addURL()
            
            self.presentViewController(socilaController, animated: true, completion: nil)
            
        }
        
        //Don't put anything after Message due to "Default: break" for precausion
        }
    }
        @IBAction func sendMessage(sender: AnyObject) {
            let messageVC = MFMessageComposeViewController ()
            
            messageVC.body = "Enter a message";
            messageVC.recipients = ["Enter number"]
            messageVC.messageComposeDelegate = self;
            
            self.presentViewController(messageVC, animated: false, completion: nil)
        }
        
        func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
            switch (result.rawValue) {
            case MessageComposeResultCancelled.rawValue:
                print("Message was cancelled")
                self.dismissViewControllerAnimated(true, completion: nil)
            case MessageComposeResultFailed.rawValue:
                print("Message failed")
                self.dismissViewControllerAnimated(true, completion: nil)
            case MessageComposeResultSent.rawValue:
                print("Message was sent")
                self.dismissViewControllerAnimated(true, completion: nil)
            default: break
                
                
            }
            
        }
        
    }
    

