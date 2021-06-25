//
//  AppDelegate.swift
//  SuperAppDemo
//
//  Created by linhvt on 3/2/21.
//

import UIKit
import ICheckSocialSDK
import ICheckEVS
import ICheckLoyaltyUI
import ICheckCore
import ICheckSDK
import ICChatSDKV2
import ICheckBaseUI
import ICheckViettelSDK
import ICheckLoyaltyAPI
import ICheckNetworking
import ICheckAuthenSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?  
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        Application.shared.attachWindow(window!)
        Application.shared.appDidFinishLaunchingWithOptions(application, didFinishLaunchingWithOptions: launchOptions)

        
        let _ = DoubleStringTransform() // ICheckSocialSDK
        let _ = ICEBusiness() // ICheckEVS
        let _ = ILUAddress(id: 5, name: "Sdf") // ICheckLoyaltyUI
        let _ = BoolIntTransform() // ICheckCore
        let _ = ICAccount() // ICheckSDK
        let _ = ICChatConfigurations() // ICChatSDKV2
        let _ = ICUAlertPopup() // ICheckBaseUI
        let _ = ICVDistrict(4, name: "abf", cityId: 5) //ICheckViettelSDK
        let _ = ILARequestMethod.put // ICheckLoyaltyAPI
        let _ = ICAuthUserType.account // ICheckAuthenSDK
        
        return true
    }


}
