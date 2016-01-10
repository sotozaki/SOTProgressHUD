//
//  SOTProgressHUD.swift
//  Pods
//
//  Created by sotozakimasanori on 1/9/16.
//
//

import UIKit

public class SOTProgressHUD: NSObject {
    
    private var visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .Light))
    let SUBVIEW = 999
    private struct Constants { static let sharedHUD = SOTProgressHUD() }
    public class var sharedHUD: SOTProgressHUD { return Constants.sharedHUD}
    
    public override init() {
        super.init()
        visualEffectView.layer.cornerRadius = 30
        visualEffectView.clipsToBounds = true
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        visualEffectView.backgroundColor = UIColor(white: 0.8, alpha: 0.36)
    }
    
    public func show(superview: UIView){
        dismiss()
        superview.addSubview(visualEffectView)
        superview.addConstraints([
            NSLayoutConstraint(
                item: visualEffectView,
                attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView,
                attribute: NSLayoutAttribute.CenterY,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.CenterY,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView,
                attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview,
                attribute: NSLayoutAttribute.Width,
                multiplier: 0.4, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView,
                attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: visualEffectView,
                attribute: NSLayoutAttribute.Width,
                multiplier: 1.0, constant: 0
            )]
        )
        
        
        if let bundleURL = NSBundle(forClass: self.classForCoder).URLForResource("SOTProgressHUDAssets", withExtension: "bundle") {
            if let image = UIImage(named: "SOTProgressHUD_loading.png", inBundle: NSBundle(URL: bundleURL), compatibleWithTraitCollection: nil){
                
                let loadingImage = UIImageView(image: image)
                loadingImage.tag = SUBVIEW
                loadingImage.translatesAutoresizingMaskIntoConstraints = false
                visualEffectView.addSubview(loadingImage)
                
                visualEffectView.addConstraints([
                    NSLayoutConstraint(
                        item: loadingImage,
                        attribute: NSLayoutAttribute.CenterX,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.CenterX,
                        multiplier: 1.0, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: loadingImage,
                        attribute: NSLayoutAttribute.CenterY,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.CenterY,
                        multiplier: 1.0, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: loadingImage,
                        attribute: NSLayoutAttribute.Width,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.Width,
                        multiplier: 0.5, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: loadingImage,
                        attribute: NSLayoutAttribute.Height,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.Height,
                        multiplier: 0.5, constant: 0
                    )
                    ]
                )
                
                let layer = loadingImage.layer;
                let animation = CABasicAnimation(keyPath: "transform.rotation")
                animation.toValue = M_PI / 2.0
                animation.duration = 0.3
                animation.repeatCount = MAXFLOAT
                animation.cumulative = true
                layer.addAnimation(animation, forKey: "transform.rotation")
            }
        }
    }
    
    public func showSuccess(superview: UIView){
        dismiss()
        superview.addSubview(visualEffectView)
        superview.addConstraints([
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.CenterY,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview, attribute: NSLayoutAttribute.CenterY,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview, attribute: NSLayoutAttribute.Width,
                multiplier: 0.4, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: visualEffectView, attribute: NSLayoutAttribute.Width,
                multiplier: 1.0, constant: 0
            )]
        )
        
        if let bundleURL = NSBundle(forClass: self.classForCoder).URLForResource("SOTProgressHUDAssets", withExtension: "bundle") {
            if let image = UIImage(named: "SOTProgressHUD_success.png", inBundle: NSBundle(URL: bundleURL), compatibleWithTraitCollection: nil){
                
                let successImage = UIImageView(image: image)
                successImage.tag = SUBVIEW
                successImage.translatesAutoresizingMaskIntoConstraints = false
                visualEffectView.addSubview(successImage)
                
                visualEffectView.addConstraints([
                    NSLayoutConstraint(
                        item: successImage,
                        attribute: NSLayoutAttribute.CenterX,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.CenterX,
                        multiplier: 1.0, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: successImage,
                        attribute: NSLayoutAttribute.CenterY,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.CenterY,
                        multiplier: 1.0, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: successImage,
                        attribute: NSLayoutAttribute.Width,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.Width,
                        multiplier: 0.8, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: successImage,
                        attribute: NSLayoutAttribute.Height,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.Height,
                        multiplier: 0.8, constant: 0
                    )
                    ])
            }
        }
    }
    public func showError(superview: UIView){
        dismiss()
        superview.addSubview(visualEffectView)
        superview.addConstraints([
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.CenterX,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview, attribute: NSLayoutAttribute.CenterX,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.CenterY,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview, attribute: NSLayoutAttribute.CenterY,
                multiplier: 1.0, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: superview, attribute: NSLayoutAttribute.Width,
                multiplier: 0.4, constant: 0
            ),
            NSLayoutConstraint(
                item: visualEffectView, attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: visualEffectView, attribute: NSLayoutAttribute.Width,
                multiplier: 1.0, constant: 0
            )]
        )
        
        if let bundleURL = NSBundle(forClass: self.classForCoder).URLForResource("SOTProgressHUDAssets", withExtension: "bundle") {
            if let image = UIImage(named: "SOTProgressHUD_error.png", inBundle: NSBundle(URL: bundleURL), compatibleWithTraitCollection: nil){
                let errorImage = UIImageView(image: image)
                errorImage.tag = SUBVIEW
                errorImage.translatesAutoresizingMaskIntoConstraints = false
                visualEffectView.addSubview(errorImage)
                
                visualEffectView.addConstraints([
                    NSLayoutConstraint(
                        item: errorImage,
                        attribute: NSLayoutAttribute.CenterX,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.CenterX,
                        multiplier: 1.0, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: errorImage,
                        attribute: NSLayoutAttribute.CenterY,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.CenterY,
                        multiplier: 1.0, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: errorImage,
                        attribute: NSLayoutAttribute.Width,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.Width,
                        multiplier: 0.8, constant: 0
                    ),
                    NSLayoutConstraint(
                        item: errorImage,
                        attribute: NSLayoutAttribute.Height,
                        relatedBy: NSLayoutRelation.Equal,
                        toItem: visualEffectView,
                        attribute: NSLayoutAttribute.Height,
                        multiplier: 0.8, constant: 0
                    )
                    ])
            }
        }
    }
    
    public func dismissSuccessWithDelay(superview: UIView, delay:Double){
        showSuccess(superview)
        NSTimer.scheduledTimerWithTimeInterval(delay, target: self, selector: Selector("dismiss"), userInfo: nil, repeats: false)
    }
    
    public func dismissErrorWithDelay(superview: UIView, delay:Double){
        showError(superview)
        NSTimer.scheduledTimerWithTimeInterval(delay, target: self, selector: Selector("dismiss"), userInfo: nil, repeats: false)
    }
    
    public func dismiss(){
        visualEffectView.removeFromSuperview()
        for view in visualEffectView.subviews{
            if view.tag == SUBVIEW{
                view.removeFromSuperview()
            }
        }
    }
}
