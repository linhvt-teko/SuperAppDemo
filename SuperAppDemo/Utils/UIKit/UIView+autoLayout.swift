//
//  UIView+autoLayout.swift
//  iCheck
//
//  Created by Mạc Ảnh on 9/12/19.
//  Copyright © 2019 iCheck Corp. All rights reserved.
//

import UIKit

extension UIView {
    
    func disableAutoresizing() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func fill(to item: Any?, equal constant: CGFloat = 0) {
        self.leading(to: item, equal: constant).isActive = true
        self.top(to: item, equal: constant).isActive = true
        self.trailing(to: item, equal: -constant).isActive = true
        self.bottom(to: item, equal: -constant).isActive = true
    }
    
    func fill(to item: Any?, top: CGFloat, bottom: CGFloat, leading: CGFloat, trailing: CGFloat) {
        self.leading(to: item, equal: leading).isActive = true
        self.top(to: item, equal: top).isActive = true
        self.trailing(to: item, equal: trailing).isActive = true
        self.bottom(to: item, equal: bottom).isActive = true
    }
    
    func fillVertical(to item: Any?, equal constant: CGFloat = 0) {
        self.top(to: item, equal: constant).isActive = true
        self.bottom(to: item, equal: -constant).isActive = true
    }
    
    func fillHorizontal(to item: Any?, equal constant: CGFloat = 0) {
        self.leading(to: item, equal: constant).isActive = true
        self.trailing(to: item, equal: -constant).isActive = true
    }
    
    func leading(to item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return self.leading(to: item, withAttribute: .leading, equal: constant)
    }
    
    func leading(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .leading,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func leading(to item: Any?, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.leading(to: item, withAttribute: .leading, lessOrEqual: constant)
    }
    
    func leading(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .leading,
                                  relatedBy: .lessThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func leading(to item: Any?, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.leading(to: item, withAttribute: .leading, greaterOrEqual: constant)
    }
    
    func leading(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .leading,
                                  relatedBy: .greaterThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func top(to item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return self.top(to: item, withAttribute: .top, equal: constant)
    }
    
    func top(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .top,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func top(to item: Any?, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.top(to: item, withAttribute: .top, lessOrEqual: constant)
    }
    
    func top(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .top,
                                  relatedBy: .lessThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func top(to item: Any?, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.top(to: item, withAttribute: .top, greaterOrEqual: constant)
    }
    
    func top(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .top,
                                  relatedBy: .greaterThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    
    func trailing(to item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return self.trailing(to: item, withAttribute: .trailing, equal: constant)
    }
    
    func trailing(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .trailing,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func trailing(to item: Any?, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.trailing(to: item, withAttribute: .trailing, lessOrEqual: constant)
    }
    
    func trailing(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .trailing,
                                  relatedBy: .lessThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func trailing(to item: Any?, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.trailing(to: item, withAttribute: .trailing, greaterOrEqual: constant)
    }
    
    func trailing(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .trailing,
                                  relatedBy: .greaterThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func bottom(to item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return self.bottom(to: item, withAttribute: .bottom, equal: constant)
    }
    
    func bottom(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .bottom,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func bottom(to item: Any?, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.bottom(to: item, withAttribute: .bottom, lessOrEqual: constant)
    }
    
    func bottom(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, lessOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .bottom,
                                  relatedBy: .lessThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func bottom(to item: Any?, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return self.bottom(to: item, withAttribute: .bottom, greaterOrEqual: constant)
    }
    
    func bottom(to item: Any?, withAttribute attribute: NSLayoutConstraint.Attribute, greaterOrEqual constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .bottom,
                                  relatedBy: .greaterThanOrEqual,
                                  toItem: item,
                                  attribute: attribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func width(equal constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .width,
                                  relatedBy: .equal,
                                  toItem: nil,
                                  attribute: .notAnAttribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func width(equalTo item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .width,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: .width,
                                  multiplier: 1.0,
                                  constant: 0)
    }
    
    func height(equal constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .height,
                                  relatedBy: .equal,
                                  toItem: nil,
                                  attribute: .notAnAttribute,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func height(equalTo item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .height,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: .height,
                                  multiplier: 1.0,
                                  constant: 0)
    }
    
    func squareWidthHeight(multiplier: CGFloat = 1.0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .width,
                                  relatedBy: .equal,
                                  toItem: self,
                                  attribute: .height,
                                  multiplier: multiplier,
                                  constant: 0)
    }
    
    func centerX(to item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .centerX,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: .centerX,
                                  multiplier: 1.0,
                                  constant: constant)
    }
    
    func centerY(to item: Any?, equal constant: CGFloat = 0) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self,
                                  attribute: .centerY,
                                  relatedBy: .equal,
                                  toItem: item,
                                  attribute: .centerY,
                                  multiplier: 1.0,
                                  constant: constant)
    }
}

extension UIView {
    var safeViewInsets:UIEdgeInsets {
        if #available(iOS 11.0, *) {
            guard let window = UIApplication.shared.keyWindowInConnectedScenes else { return .zero }
            return window.safeAreaInsets
        } else {
            return .zero
        }
    }
    
    static var safeBottom: CGFloat {
        
        if #available(iOS 11.0, *) {
            guard let window = UIApplication.shared.keyWindowInConnectedScenes else { return 0 }
            return window.safeAreaInsets.bottom
        } else {
            return .zero
        }

    }

}

extension UIApplication {
    var keyWindowInConnectedScenes: UIWindow? {
        return windows.first(where: { $0.isKeyWindow })
    }
}
