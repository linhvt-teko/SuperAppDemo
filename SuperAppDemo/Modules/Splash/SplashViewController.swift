//
//  SplashViewController.swift
//  SuperAppTemplate
//
//  Created by linhvt on 11/16/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import UIKit
import Janus

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)

        TerraManager.shared.loadTerra { (isSuccess) in
            guard isSuccess else {
                self.showAlertController(message: "Terra load failed!")
                return
            }
            
            let window = AppDelegate.shared.window
            
            terraAuth?.refreshToken { isSuccess, credential, error in
                let vc = AppListModule.build()
                window?.rootViewController = UINavigationController(rootViewController: vc)
                window?.makeKeyAndVisible()
            }
        }
    }

}
