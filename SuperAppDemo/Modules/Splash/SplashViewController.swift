//
//  SplashViewController.swift
//  SuperAppTemplate
//
//  Created by linhvt on 11/16/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)

        Application.shared.loadTerra { [weak self] (isSuccess) in
            if isSuccess {
                let vc = LoginModule.build()
                let window = AppDelegate.shared.window
                window?.rootViewController = UINavigationController(rootViewController: vc)
                window?.makeKeyAndVisible()
//                self?.navigationController?.pushViewController(vc, animated: false)
            } else {
                
            }
        }
    }

}
