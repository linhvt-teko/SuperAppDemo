//
//  UIImage+extension.swift
//  iCheck
//
//  Created by Mạc Ảnh on 9/12/19.
//  Copyright © 2019 iCheck Corp. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension UIImage {
    func changeImageColorNoScale(color: UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else {
            UIGraphicsEndImageContext()
            return nil
        }
        
        let rect = CGRect(origin: .zero, size: size)
        
        color.setFill()
        draw(in: rect)
        
        context.setBlendMode(.sourceIn)
        context.fill(rect)
        
        guard let resultImage = UIGraphicsGetImageFromCurrentImageContext() else {
            UIGraphicsEndImageContext()
            return nil
        }
        
        UIGraphicsEndImageContext()
        return resultImage
    }
    
    func changeImageSize(newWidth: CGFloat, newHeight: CGFloat) -> UIImage {
        return UIImage.draw(size: CGSize(width:newWidth, height:newHeight), opaque: false, scale: scale) { context in
            context.translateBy(x: 0, y: newHeight)
            context.scaleBy(x: 1.0, y: -1.0);
            context.setBlendMode(CGBlendMode.normal)
            
            let rect = CGRect(x: 0, y: 0, width: newWidth, height: newHeight)
            if let cgImage = self.cgImage {
                context.clip(to: rect, mask: cgImage)
            }
            context.fill(rect)
        }
    }
    
    func setOpacity(_ alpha:CGFloat) -> UIImage {
        return UIImage.draw(size: size, opaque: false, scale: scale) { _ in
            draw(at: CGPoint.zero, blendMode: .normal, alpha: alpha)
        }
    }
    
    static func draw(size: CGSize, opaque: Bool = false, scale: CGFloat = 1, body: (CGContext) -> Void) -> UIImage {
        UIGraphicsBeginImageContext(size)
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return UIImage() }
        body(context)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
        return image
    }
    
}

extension UIImage {
    enum JPEGQuality: CGFloat {
        case lowest  = 0
        case low     = 0.25
        case medium  = 0.5
        case high    = 0.75
        case highest = 1
    }
    
    /// Returns the data for the specified image in JPEG format.
    /// If the image object’s underlying image data has been purged, calling this function forces that data to be reloaded into memory.
    /// - returns: A data object containing the JPEG data, or nil if there was a problem generating the data. This function may return nil if the image has no data or if the underlying CGImageRef contains data in an unsupported bitmap format.
    func jpeg(_ quality: JPEGQuality) -> Data? {
        return self.jpegData(compressionQuality: quality.rawValue)
    }
}

extension UIImageView {
    func loadImage(_ uri: String?, placeHolder image: UIImage? = nil, imageTransition: SDWebImageTransition = .fade, incaditor: SDWebImageActivityIndicator? = nil) {
        self.sd_imageTransition = .fade
        self.sd_imageIndicator = incaditor
        if let path = uri, let url = URL(string: path) {
            self.sd_setImage(with: url, placeholderImage: image)
        }else {
            self.sd_setImage(with: nil, placeholderImage: image)
        }
    }
}

extension UIImage {
    func withInset(_ insets: UIEdgeInsets = .init(edge: 1)) -> UIImage? {
        let cgSize = CGSize(width: self.size.width + insets.left * self.scale + insets.right * self.scale,
                            height: self.size.height + insets.top * self.scale + insets.bottom * self.scale)

        UIGraphicsBeginImageContextWithOptions(cgSize, false, self.scale)
        defer { UIGraphicsEndImageContext() }

        let origin = CGPoint(x: insets.left * self.scale, y: insets.top * self.scale)
        self.draw(at: origin)

        return UIGraphicsGetImageFromCurrentImageContext()?.withRenderingMode(self.renderingMode)
    }
    
    public func cropImage(with ratio: CGFloat = 1) -> UIImage? {
        let imageWidth = CGFloat(cgImage!.width)
        let imageHeight = CGFloat(cgImage!.height)
        
        let egde = min(imageWidth, imageHeight)
        let size = CGSize(width: egde, height: egde * ratio)

        let x = (imageWidth - size.width) / 2
        let y = (imageHeight - size.height) / 2

        let cropRect = CGRect(x: x, y: y, width: size.width, height: size.height)
        if let imageRef = cgImage!.cropping(to: cropRect) {
            let image = UIImage(cgImage: imageRef, scale: 0, orientation: imageOrientation)
            return image
        }

        return nil
    }
    
    public func withRoundedCorners() -> UIImage? {
        let cornerRadius = min(size.width, size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 1)
        let rect = CGRect(origin: .zero, size: size)
        UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius).addClip()
        draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

extension UIImage {
    
    var ratio: CGFloat {
        return self.size.height / self.size.width
    }

    func aspectFitImage(inRect rect: CGRect) -> UIImage? {
        let width = self.size.width
        let height = self.size.height
        let aspectWidth = rect.width / width
        let aspectHeight = rect.height / height
        let scaleFactor = aspectWidth > aspectHeight ? rect.size.height / height : rect.size.width / width

        UIGraphicsBeginImageContextWithOptions(CGSize(width: width * scaleFactor, height: height * scaleFactor), false, 0.0)
        self.draw(in: CGRect(x: 0.0, y: 0.0, width: width * scaleFactor, height: height * scaleFactor))

        defer {
            UIGraphicsEndImageContext()
        }

        return UIGraphicsGetImageFromCurrentImageContext()
    }
}

extension CIImage {
    
    /// Combines the current image with the given image centered.
    func combined(with image: CIImage) -> CIImage? {
        guard let combinedFilter = CIFilter(name: "CISourceOverCompositing") else { return nil }
        let centerTransform = CGAffineTransform(translationX: extent.midX - (image.extent.size.width / 2), y: extent.midY - (image.extent.size.height / 2))
        combinedFilter.setValue(image.transformed(by: centerTransform), forKey: "inputImage")
        combinedFilter.setValue(self, forKey: "inputBackgroundImage")
        return combinedFilter.outputImage!
    }
}
