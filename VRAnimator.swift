//
//  VRAnimator.swift
//
//  Created by Viktor Radchenko on 7/31/14.
//

import Foundation
import UIkit
import QuartzCore

class Animator
{
    func flipHorizontalViewContorller(nextController: UIViewController!,selfViewController: UIViewController!,back:() -> Void){
        nextController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        selfViewController.presentViewController(nextController, animated: true, completion:back)
    }
    
    func coverVerticalViewContorller(nextController: UIViewController!,selfViewController: UIViewController!,back:() -> Void){
        nextController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        selfViewController.presentViewController(nextController, animated: true, completion:back)
    }
    
    func crossDissolveViewContorller(nextController: UIViewController!,selfViewController: UIViewController!,back:() -> Void){
        nextController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        selfViewController.presentViewController(nextController, animated: true, completion:back)
    }
    
    func partialCurlViewContorller(nextController: UIViewController!,selfViewController: UIViewController!,back:() -> Void){
        nextController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        selfViewController.presentViewController(nextController, animated: true, completion:back)
    }
    
    func viewMoveInFromLeft(nextView:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "moveIn"
        animation.timingFunction = CAMediaTimingFunction(name: "easeInEaseOut")
        animation.subtype = "fromLeft"
        animation.fillMode = "forwards"
        nextView.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewMoveInFromRight(nextView:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "moveIn"
        animation.timingFunction = CAMediaTimingFunction(name: "easeInEaseOut")
        animation.subtype = "fromRight"
        animation.fillMode = "forwards"
        nextView.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewMoveInFromTop(nextView:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "moveIn"
        animation.timingFunction = CAMediaTimingFunction(name: "easeInEaseOut")
        animation.subtype = "fromTop"
        animation.fillMode = "forwards"
        nextView.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewMoveInFromBottom(nextView:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "moveIn"
        animation.timingFunction = CAMediaTimingFunction(name: "easeInEaseOut")
        animation.subtype = "fromBottom"
        animation.fillMode = "forwards"
        nextView.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewFadeOut(nextView:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "fade"
        animation.timingFunction = CAMediaTimingFunction(name: "easeOut")
        animation.fillMode = "forwards"
        nextView.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewFadeIn(nextView:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "fade"
        animation.timingFunction = CAMediaTimingFunction(name: "easeIn")
        animation.fillMode = "forwards"
        nextView.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewFlipFromLeft(view:UIView!,aniTime:Float!){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut)
        UIView.setAnimationDuration(NSTimeInterval(aniTime))
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromLeft, forView: view, cache: false)
        UIView.commitAnimations()
    }
    
    func viewFlipFromRight(view:UIView!,aniTime:Float!){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut)
        UIView.setAnimationDuration(NSTimeInterval(aniTime))
        UIView.setAnimationTransition(UIViewAnimationTransition.FlipFromRight, forView: view, cache: false)
        UIView.commitAnimations()
    }
    
    func viewCurup(view:UIView!,aniTime:Float!){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut)
        UIView.setAnimationDuration(NSTimeInterval(aniTime))
        UIView.setAnimationTransition(UIViewAnimationTransition.CurlUp, forView: view, cache: false)
        UIView.commitAnimations()
    }
    
    func viewCurdown(view:UIView!,aniTime:Float!){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationCurve(UIViewAnimationCurve.EaseInOut)
        UIView.setAnimationDuration(NSTimeInterval(aniTime))
        UIView.setAnimationTransition(UIViewAnimationTransition.CurlDown, forView: view, cache: false)
        UIView.commitAnimations()
    }
    
    func viewPushUp(view:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "push"
        animation.timingFunction = CAMediaTimingFunction(name: "easeOut")
        animation.fillMode = "forwards"
        animation.subtype = "fromTop"
        view.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewPushDown(view:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "push"
        animation.timingFunction = CAMediaTimingFunction(name: "easeOut")
        animation.fillMode = "forwards"
        animation.subtype = "fromBottom"
        view.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewPushLeft(view:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "push"
        animation.timingFunction = CAMediaTimingFunction(name: "easeOut")
        animation.fillMode = "forwards"
        animation.subtype = "fromLeft"
        view.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func viewPushRight(view:UIView!,aniTime:Float!,animoteKey:String!){
        var animation:CATransition = CATransition()
        animation.duration = CFTimeInterval(aniTime)
        animation.type = "push"
        animation.timingFunction = CAMediaTimingFunction(name: "easeOut")
        animation.fillMode = "forwards"
        animation.subtype = "fromRight"
        view.layer.addAnimation(animation, forKey: animoteKey)
    }
    
    func animationRotateAndScaleEffects(view:UIView!,aniTime:Float!){
        UIView.animateWithDuration(NSTimeInterval(aniTime), animations: {
            view.transform = CGAffineTransformMakeScale(0.001,0.001)
            var animation:CABasicAnimation = CABasicAnimation(keyPath: "transform")
            
            animation.toValue = NSValue(CATransform3D: CATransform3DMakeRotation(CGFloat(M_PI), 1,0,0))
            animation.duration = CFTimeInterval(aniTime)
            }, completion: {completion in
                UIView.animateWithDuration(NSTimeInterval(aniTime), animations: {
                    view.transform = CGAffineTransformMakeScale(1,1)
                    })
            })
    }
}
