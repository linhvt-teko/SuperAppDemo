//
//  MiniAppLauncher.swift
//  MiniApp
//
//  Created by Tung Nguyen on 9/4/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import UIKit
import HestiaIOS
import Hestia
import MiniAppDemoSDK

public class MiniAppLauncher: IOSAppLauncherProtocol {
    
    public var launchData: AppLauncherData
    
    required public init(launchData: AppLauncherData) {
        self.launchData = launchData
    }
    
    public func create(className: String, launcherData: AppLauncherData, completion: @escaping (UIViewController?) -> ()) {
        dump(launcherData)
        
        var dict: [String : Any] = [:]
        if let data = launcherData.accessToken {
            dict["accessToken"] = data
        }
        if let data = launcherData.refreshToken {
            dict["refreshToken"] = data
        }
        if let data = launcherData.idToken {
            dict["idToken"] = data
        }
        
        let vc = MiniAppSDK.rootViewController(data: dict)
        completion(vc)
    }
    
}


