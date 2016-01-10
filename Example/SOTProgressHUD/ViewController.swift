//
//  ViewController.swift
//  SOTProgressHUD
//
//  Created by sotozakimasanori on 01/09/2016.
//  Copyright (c) 2016 sotozakimasanori. All rights reserved.
//

import UIKit
import SOTProgressHUD

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let backImage = UIImageView(image: UIImage(named: "back.png"))
        backImage.translatesAutoresizingMaskIntoConstraints = false
        backImage.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(backImage)
        
        let showButton = UIButton()
        showButton.backgroundColor = UIColor.grayColor()
        showButton.setTitle("Show", forState: UIControlState.Normal)
        showButton.translatesAutoresizingMaskIntoConstraints = false
        showButton.addTarget(self, action: "show", forControlEvents: .TouchUpInside)
        self.view.addSubview(showButton)
        
        let dismissSucessButton = UIButton()
        dismissSucessButton.backgroundColor = UIColor.grayColor()
        dismissSucessButton.setTitle("Dismiss Success", forState: UIControlState.Normal)
        dismissSucessButton.translatesAutoresizingMaskIntoConstraints = false
        dismissSucessButton.addTarget(self, action: "dismissSuccess", forControlEvents: .TouchUpInside)
        self.view.addSubview(dismissSucessButton)
        
        let dismissErrorButton = UIButton()
        dismissErrorButton.backgroundColor = UIColor.grayColor()
        dismissErrorButton.setTitle("Dismiss Error", forState: UIControlState.Normal)
        dismissErrorButton.translatesAutoresizingMaskIntoConstraints = false
        dismissErrorButton.addTarget(self, action: "dismissError", forControlEvents: .TouchUpInside)
        self.view.addSubview(dismissErrorButton)
        
        let dismissButton = UIButton()
        dismissButton.backgroundColor = UIColor.grayColor()
        dismissButton.setTitle("Dismiss", forState: UIControlState.Normal)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.addTarget(self, action: "dismiss", forControlEvents: .TouchUpInside)
        self.view.addSubview(dismissButton)
        
        //Constraints
        self.view.addConstraints([
            //backImage
            NSLayoutConstraint(
                item: backImage, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: backImage, attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.Top,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: backImage, attribute: NSLayoutAttribute.Bottom,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.Bottom,
                multiplier: 1.0, constant: 0
            ),
            //showButton
            NSLayoutConstraint(
                item: showButton, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: showButton, attribute: NSLayoutAttribute.CenterY,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.CenterY,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: showButton, attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.Width,
                multiplier: 0.6, constant: 0
            ),
            NSLayoutConstraint(
                item: showButton, attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: showButton, attribute: NSLayoutAttribute.Width,
                multiplier: 0.2, constant: 0
            ),
            //dismissSucessButton
            NSLayoutConstraint(
                item: dismissSucessButton, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: dismissSucessButton, attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: showButton, attribute: NSLayoutAttribute.Bottom,
                multiplier: 1.0, constant: 10
            ),
            NSLayoutConstraint(
                item: dismissSucessButton, attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.Width,
                multiplier: 0.6, constant: 0
            ),
            NSLayoutConstraint(
                item: dismissSucessButton, attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: dismissSucessButton, attribute: NSLayoutAttribute.Width,
                multiplier: 0.2, constant: 0
            )]
        )
        
        self.view.addConstraints([
            //dismissErrorButton
            NSLayoutConstraint(
                item: dismissErrorButton, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: dismissErrorButton, attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: dismissSucessButton, attribute: NSLayoutAttribute.Bottom,
                multiplier: 1.0, constant: 10
            ),
            NSLayoutConstraint(
                item: dismissErrorButton, attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.Width,
                multiplier: 0.6, constant: 0
            ),
            NSLayoutConstraint(
                item: dismissErrorButton, attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: dismissErrorButton, attribute: NSLayoutAttribute.Width,
                multiplier: 0.2, constant: 0
            ),
            //dismissButton
            NSLayoutConstraint(
                item: dismissButton, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: dismissButton, attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: dismissErrorButton, attribute: NSLayoutAttribute.Bottom,
                multiplier: 1.0, constant: 10
            ),
            NSLayoutConstraint(
                item: dismissButton, attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: self.view, attribute: NSLayoutAttribute.Width,
                multiplier: 0.6, constant: 0
            ),
            NSLayoutConstraint(
                item: dismissButton, attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: dismissButton, attribute: NSLayoutAttribute.Width,
                multiplier: 0.2, constant: 0
            )]
        )
    }
    
    func show(){
        SOTProgressHUD.sharedHUD.show(self.view)
    }
    
    func dismissSuccess(){
        SOTProgressHUD.sharedHUD.dismissSuccessWithDelay(self.view, delay: 1.0)
    }
    
    func dismissError(){
        SOTProgressHUD.sharedHUD.dismissErrorWithDelay(self.view, delay: 1.0)
    }
    
    func dismiss(){
        SOTProgressHUD.sharedHUD.dismiss()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

