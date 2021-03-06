//
//  LoginViewController.swift
//  SuperAppDemo
//
//  Created linhvt on 3/2/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by LinhVT - @linh.deli
//

import UIKit
import Janus
import JanusGoogle
import JanusFacebook

class LoginViewController: UIViewController {

    // MARK: - variables
	var presenter: LoginPresenterProtocol?

    // MARK: - outlets
    
    // MARK: - actions
    @IBAction func facebookButtonWasTapped(_ sender: Any) {
        TerraAuth.getInstance(by: terraApp)?.loginWithFacebook(presentViewController: self, delegate: presenter as? JanusLoginDelegate)
    }
    
    @IBAction func googlePlusButtonWasTapped(_ sender: Any) {
        TerraAuth.getInstance(by: terraApp)?.loginWithGoogle(presentViewController: self, delegate: presenter as? JanusLoginDelegate)
    }

    // MARK: - life cycle
	override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - setup
    
}

// MARK: - ViewProtocol
extension LoginViewController: LoginViewProtocol {

    func showAlert(message: String?) {
        self.showAlertController(message: message)
    }

    func openAppsList() {
        let vc = AppListModule.build()
        navigationController?.pushViewController(vc, animated: true)
    }

}

