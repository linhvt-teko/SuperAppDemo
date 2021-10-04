//
//  AppDelegate.swift
//  SuperAppDemo
//
//  Created by linhvt on 3/2/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?  
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        App.shared.attachWindow(window!)
        App.shared.appDidFinishLaunchingWithOptions(application, didFinishLaunchingWithOptions: launchOptions)

        return true
    }


}
