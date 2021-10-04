//
//  TripiPrepaidLauncher.swift
//  TripiPrepaidConnector
//
//  Created by linhvt on 30/09/2021.
//

import Foundation
import UIKit
import HestiaIOS
import Hestia
import TripiPrepaidKit


public class TripiPrepaidLauncher: IOSAppLauncherProtocol {
    
    public required init() { }
    
    public func create(launcherData: AppLauncherData, completion: @escaping (UIViewController?) -> ()) {
        let config = launcherData.extraConfig
        let idToken = launcherData.authResult?.idToken
        print("[TripiPrepaidConfig]: ", config)
        
        guard let caId      = launcherData.extraConfig["caid"] as? String,
              let appToken  = launcherData.extraConfig["appToken"] as? String,
              let provider  = launcherData.extraConfig["provider"] as? String,
              let bundleId  = launcherData.extraConfig["bundleId"] as? String
        else {
            fatalError("TripiPrepaidConnector's configuration is not available!")
        }

        TripiPrepaidSDK.shared.openPrepaid(
            config: .init(
                caId: Int(caId),
                provider: provider,
                secretKey: appToken,
                idToken: idToken,
                appId: bundleId,
                env: .dev
            )
        ) { viewController, error in
            completion(viewController)
        }
        
        
    }

}
