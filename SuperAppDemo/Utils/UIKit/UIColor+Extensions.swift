//
//  UIColor+extension.swift
//  iCheck
//
//  Created by Mạc Ảnh on 9/12/19.
//  Copyright © 2019 iCheck Corp. All rights reserved.
//
import Foundation
import UIKit

extension UIColor {
    
    convenience init(_ hex: Int, alpha: Double = 1.0) {
        
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(hex & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
    
    class func rgba(red: Int, green: Int, blue: Int, alpha: Double = 1.0) -> UIColor {
        
        let r = CGFloat(Double(red) / 255.0)
        let g = CGFloat(Double(green) / 255.0)
        let b = CGFloat(Double(blue) / 255.0)
        let a = CGFloat(alpha)
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
	
	//Load ColorSet
	private class func named(name: String, defaultColor: UIColor) -> UIColor {
		var color: UIColor?
		if #available(iOS 11.0, *) {
			color = UIColor(named: name)
		}
		return color ?? defaultColor
	}

}


extension UIColor {
    static func fadeColor(fromColor: UIColor?, toColor: UIColor?, withPercentage percentage: CGFloat = 0.5) -> UIColor? {
        var fromRed:CGFloat = 0
        var fromGreen:CGFloat = 0
        var fromBlue:CGFloat = 0
        var fromAlpha:CGFloat = 0
        fromColor?.getRed(&fromRed, green:&fromGreen, blue:&fromBlue, alpha:&fromAlpha)
        
        var toRed:CGFloat = 0
        var toGreen:CGFloat = 0
        var toBlue:CGFloat = 0
        var toAlpha:CGFloat = 0
        toColor?.getRed(&toRed, green: &toGreen, blue: &toBlue, alpha: &toAlpha)
        
        let red:CGFloat = (toRed - fromRed)*percentage + fromRed
        let green:CGFloat = (toGreen - fromGreen)*percentage + fromGreen
        let blue:CGFloat = (toBlue - fromBlue)*percentage + fromBlue
        let alpha:CGFloat = (toAlpha - fromAlpha)*percentage + fromAlpha
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}

class Colors {
    var gl:CAGradientLayer!

    init() {
        let colorTop = UIColor(red: 192.0 / 255.0, green: 38.0 / 255.0, blue: 42.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 35.0 / 255.0, green: 2.0 / 255.0, blue: 2.0 / 255.0, alpha: 1.0).cgColor

        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
