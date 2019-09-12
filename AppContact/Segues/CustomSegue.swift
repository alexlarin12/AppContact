//
//  CustomSegue.swift
//  AppContact
//
//  Created by Alex Larin on 09/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    override func perform() {
        
        guard let containerView = self.source.view.superview else{return}
        let containerViewFrame = containerView.frame
        
        let sourceViewTargetFrame = CGRect(x: 0, y: -containerViewFrame.height, width: source.view.frame.width, height: source.view.frame.height)
        
        let dstViewTargetFrame = source.view.frame
        containerView.addSubview(destination.view)
        destination.view.frame = CGRect(x: 0, y: containerViewFrame.height, width: source.view.frame.width, height: source.view.frame.height)
        
        UIView.animate(withDuration:2.5, animations:{
            self.source.view.frame = sourceViewTargetFrame
            self.destination.view.frame = dstViewTargetFrame
        }) {finished in
            self.source.present(self.destination, animated: false, completion: nil)
        }
    }
}
