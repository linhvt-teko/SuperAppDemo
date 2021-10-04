//
//  App.swift
//  SuperAppDemo
//
//  Created by linhvt on 01/10/2021.
//

import Foundation
import UIKit
import Toast_Swift
import IQKeyboardManagerSwift
import SVProgressHUD

class App {
    
    static let shared = App()
    var window: UIWindow!
    var application: UIApplication!
    var launchOptions: [UIApplication.LaunchOptionsKey: Any]?

    
    func attachWindow(_ window: UIWindow) {
        self.window = window
        self.window.backgroundColor = .black
        if #available(iOS 13.0, *) {
            self.window.overrideUserInterfaceStyle = .light
        } else {
            // Fallback on earlier versions
        }
    }
    
    func buildRootViewController() {
        let rootVC = SplashViewController.init(nibName: "SplashViewController", bundle: nil)
        let navVC = UINavigationController(rootViewController: rootVC)
        
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
    }

    
    
    func appDidFinishLaunchingWithOptions(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        self.application = application
        self.launchOptions = launchOptions
        buildRootViewController()
        setupTools()
    }

}

extension App {
    
    private func setupTools() {
        // custom initialization
        setupToasts()
        setupIQKeyboardManager()
    }
    
    private func setupToasts() {
        // for toasts
        ToastManager.shared.duration =  5.0
        ToastManager.shared.isTapToDismissEnabled = true
        ToastManager.shared.isQueueEnabled = true
    }
    
    private func setupIQKeyboardManager() {
        // for IQKeyboardManager
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = false
    }
}
