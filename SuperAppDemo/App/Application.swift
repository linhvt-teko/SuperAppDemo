//
//  Application.swift
//  SuperAppDemo
//
//  Created by linhvt on 3/2/21.
//

import Foundation
import UIKit
import TerraInstancesManager
import Terra
import Hestia
import Minerva
import Janus

class Application {
    static var shared = Application()
    
    var window: UIWindow!
    var application: UIApplication!
    var launchOptions: [UIApplication.LaunchOptionsKey: Any]?

    func attachWindow(_ window: UIWindow) {
        self.window = window
        self.window.backgroundColor = .black
    }
    
    func buildRootViewController() {
        let vc = SplashViewController(nibName: "SplashViewController", bundle: Bundle(for: SplashViewController.self))
        let nav = UINavigationController(rootViewController: vc)
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
    }

    func appDidFinishLaunchingWithOptions(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        self.application = application
        self.launchOptions = launchOptions
        buildRootViewController()
    }
    
}

extension Application {
    
    func loadTerra(completion: @escaping ((Bool) -> Void)) {
        
        TerraInstanceCenter.shared.loadTerra { (isSuccess) in
            if isSuccess {
                TerraHestia.configureWith(app: terraApp)
                TerraPayment.configureWith(app: terraApp)
                TerraAuth.configureWith(app: terraApp)
                TerraAuth.getInstance(by: terraApp)?.registerGoogle()
            }
            completion(isSuccess)
        }

    }

}
