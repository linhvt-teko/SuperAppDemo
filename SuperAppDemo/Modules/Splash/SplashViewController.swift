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

        Application.shared.loadTerra { [weak self] (isSuccess) in
            if isSuccess {
                let window = AppDelegate.shared.window

                TerraAuth.auth(app: terraApp).refreshToken { isSuccess, credential, error in
                    guard !isSuccess else {
                        let vc = AppListModule.build()
                        window?.rootViewController = UINavigationController(rootViewController: vc)
                        window?.makeKeyAndVisible()

                        return
                    }
                    
                    let vc = LoginModule.build()
                    window?.rootViewController = UINavigationController(rootViewController: vc)
                    window?.makeKeyAndVisible()

                }
                
                
                
            } else {
                
            }
        }
    }

}
