//
//  ConttentCellView.swift
//  AppContact
//
//  Created by Alex Larin on 23/08/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

    @IBDesignable class ContentCellView: UIView {
        
        override static var layerClass: AnyClass {
            return CAGradientLayer.self
        }
        
        var gradientLayer: CAGradientLayer {
            return self.layer as! CAGradientLayer
        }
        
        @IBInspectable var startColor: UIColor = .white {
            didSet {
                self.updateColors()
            }
        }
        @IBInspectable var endColor: UIColor = .black {
            didSet {
                self.updateColors()
            }
        }
        
        @IBInspectable var startLocation: CGFloat = 0 {
            didSet {
                self.updateLocations()
            }
        }
        @IBInspectable var endLocation: CGFloat = 1 {
            didSet {
                self.updateLocations()
            }
        }
        
        @IBInspectable var startPoint: CGPoint = .zero {
            didSet {
                self.updateStartPoint()
            }
        }
        
        @IBInspectable var endPoint: CGPoint = CGPoint(x: 0, y: 1) {
            didSet {
                self.updateEndPoint()
            }
        }
        
        func updateLocations() {
            self.gradientLayer.locations = [self.startLocation as NSNumber, self.endLocation as NSNumber]
        }
        
        func updateColors() {
            self.gradientLayer.colors = [self.startColor.cgColor, self.endColor.cgColor]
        }
        
        func updateStartPoint() {
            self.gradientLayer.startPoint = startPoint
        }
        
        func updateEndPoint() {
            self.gradientLayer.endPoint = endPoint
        }
        
    

    
    
}

