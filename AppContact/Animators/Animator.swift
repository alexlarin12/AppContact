//
//  Animator.swift
//  AppContact
//
//  Created by Alex Larin on 09/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let src = transitionContext.viewController(forKey: .from) else {return}
        guard let dst = transitionContext.viewController(forKey: .to) else {return}
        let containerViewFrame = transitionContext.containerView.frame
        let sourceViewTargetFrame = CGRect(x: 0, y: -containerViewFrame.height, width: src.view.frame.width, height: src.view.frame.height)
        let dstViewTargetFrame = src.view.frame
        transitionContext.containerView.addSubview(dst.view)
        dst.view.frame = CGRect(x: 0, y: containerViewFrame.height, width: src.view.frame.width, height: src.view.frame.height)
        
        UIView.animate(withDuration: self.transitionDuration(using: transitionContext), animations:{
            src.view.frame = sourceViewTargetFrame
            dst.view.frame = dstViewTargetFrame
        }) {finished in
            src.removeFromParent()
            transitionContext.completeTransition(finished)
        }
        
    }
}
