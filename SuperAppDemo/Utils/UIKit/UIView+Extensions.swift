//
//  UIView+extension.swift
//  iCheck
//
//  Created by Mạc Ảnh on 9/12/19.
//  Copyright © 2019 iCheck Corp. All rights reserved.
//

import UIKit

extension UIView {
    
    func showPopupAnimation() {
        self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.alpha = 0.0;
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1.0
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
    
    func closePopupViewWithAnimation() {
        UIView.animate(withDuration: 0.25, animations: {
            self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.alpha = 0.0
        }) { (finished) in
            if finished {
                self.removeFromSuperview()
            }
        }
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let view: UIView = bundle.loadNibNamed("\(type(of: self))", owner: self, options: nil)![0] as! UIView
        
        return view
    }
    
    func loadViewFromNib(named name: String) -> UIView? {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: name, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        
        return view
    }
}

extension UIView {
    
    func setCornerRadius(_ radius: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    func addBorders(to edges: UIRectEdge, withColor color: UIColor, andWidth width: CGFloat) {
        
        if edges.contains(.all) {
            layer.borderColor = color.cgColor
            layer.borderWidth = width
            return
        }
        
        if edges.contains(.top) {
            let border = CALayer()
            border.backgroundColor = color.cgColor
            border.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: width)
            layer.addSublayer(border)
        }
        
        if edges.contains(.left) {
            let border = CALayer()
            border.backgroundColor = color.cgColor
            border.frame = CGRect(x: 0, y: 0, width: width, height: frame.size.height)
            layer.addSublayer(border)
        }
        
        if edges.contains(.right) {
            let border = CALayer()
            border.backgroundColor = color.cgColor
            border.frame = CGRect(x: frame.size.width - width, y: 0, width: width, height: frame.size.height)
            layer.addSublayer(border)
        }
        
        if edges.contains(.bottom) {
            let border = CALayer()
            border.backgroundColor = color.cgColor
            border.frame = CGRect(x: 0, y: frame.size.height - width, width: frame.size.width, height: width)
            layer.addSublayer(border)
        }
    }
    
    func addTapGesture(tapNumber : Int, target: Any , action : Selector) {
        let tap = UITapGestureRecognizer(target: target, action: action)
        tap.numberOfTapsRequired = tapNumber
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
        
    }
    
    func removeAllSubView() {
        for subView in subviews {
            subView.removeFromSuperview()
        }
    }
    
    func dropShadow(color: UIColor = .shadowColor, opacity: Float = 1, radius: CGFloat = 2, offset: CGSize = CGSize(width: 0, height: 2), scale: Bool = true) {
        layer.masksToBounds = false
        clipsToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func dropShadowNoPath(color: UIColor = .shadowColor, opacity: Float = 1, radius: CGFloat = 2, offset: CGSize = CGSize(width: 0, height: 2)) {
        layer.masksToBounds = false
        clipsToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
    }
    
    func dropShadowNoPathNormal() {
       self.dropShadowNoPath(color: .shadowColor, opacity: 1, radius: 2, offset: CGSize(width: 0, height: 1))
   }
    
    func snapshot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 0.0)
        guard let currentGraphicsContext = UIGraphicsGetCurrentContext() else {
            return UIImage()
        }
        
        self.layer.render(in: currentGraphicsContext)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else {
            return UIImage()
        }
        UIGraphicsEndImageContext()
        return image
    }
    
}

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            guard let layerColor = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: layerColor)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.shadowColor.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 1
            layer.shadowRadius = newValue
        }
    }
    
}

extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func addshadow(top: Bool,
                   left: Bool,
                   bottom: Bool,
                   right: Bool,
                   shadowRadius: CGFloat = 2.0,
                   color: UIColor = UIColor.shadowColor) {
        
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = 1.0
        self.layer.shadowColor = color.cgColor
        
        let path = UIBezierPath()
        var x: CGFloat = 0
        var y: CGFloat = 0
        var viewWidth = self.frame.width
        var viewHeight = self.frame.height
        
        // here x, y, viewWidth, and viewHeight can be changed in
        // order to play around with the shadow paths.
        if (!top) {
            y+=(shadowRadius+1)
        }
        if (!bottom) {
            viewHeight-=(shadowRadius+1)
        }
        if (!left) {
            x+=(shadowRadius+1)
        }
        if (!right) {
            viewWidth-=(shadowRadius+1)
        }
        // selecting top most point
        path.move(to: CGPoint(x: x, y: y))
        // Move to the Bottom Left Corner, this will cover left edges
        /*
         |☐
         */
        path.addLine(to: CGPoint(x: x, y: viewHeight))
        // Move to the Bottom Right Corner, this will cover bottom edge
        /*
         ☐
         -
         */
        path.addLine(to: CGPoint(x: viewWidth, y: viewHeight))
        // Move to the Top Right Corner, this will cover right edge
        /*
         ☐|
         */
        path.addLine(to: CGPoint(x: viewWidth, y: y))
        // Move back to the initial point, this will cover the top edge
        /*
         _
         ☐
         */
        path.close()
        self.layer.shadowPath = path.cgPath
    }
    
}

extension UIView {
    func bounceAnimation(_ duration: Double = 0.5, completion: (() -> Void)? = nil) {
        self.isUserInteractionEnabled = false
        self.transform = self.transform.scaledBy(x: 1.3, y: 1.3)
        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)
        }, completion: { success in
            self.isUserInteractionEnabled = true
            if success {
                completion?()
            }
        })
    }
}

extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder?.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}
