//
//  ICLoader.swift
//  iCheck
//
//  Created by Mạc Ảnh on 9/27/19.
//  Copyright © 2019 iCheck Corp. All rights reserved.
//

import UIKit
import Lottie

class ICLoader {
    
    private static var animationView: AnimationView = {
        let lottieANView = AnimationView(name: "loading_short")
        lottieANView.loopMode = .loop
        lottieANView.contentMode = UIView.ContentMode.scaleAspectFit
        lottieANView.backgroundColor = UIColor.clear
        return lottieANView
    }()
    
	private static let containerView: UIView = UIView().then { (view) in
        view.backgroundColor = UIColor.white.withAlphaComponent(0.25)
	}
    
    static func startLoading(fromView: UIView?) {
        DispatchQueue.main.async {
			containerView.removeFromSuperview()
            fromView?.addSubview(containerView)
			containerView.snp.makeConstraints { (maker) in
				maker.edges.equalToSuperview()
			}
            containerView.addSubview(animationView)
            animationView.snp.makeConstraints({
				$0.height.equalTo(120)
                $0.center.equalToSuperview()
            })
            animationView.play()
        }
    }
    
    static func stopLoading() {
        DispatchQueue.main.async {
            animationView.stop()
            containerView.removeFromSuperview()
        }
    }
}
