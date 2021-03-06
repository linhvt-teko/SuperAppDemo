//
//  LoginPresenter.swift
//  SuperAppDemo
//
//  Created linhvt on 3/2/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by LinhVT - @linh.deli
//

import Foundation
import Janus

class LoginPresenter: LoginPresenterProtocol {
    
    weak private var view: LoginViewProtocol?
    
    init(view: LoginViewProtocol) {
        self.view = view
    }
    
    
}

// MARK: - JanusLoginHelperDelegate
extension LoginPresenter: JanusLoginDelegate {
    func janusHasLoginFail(error: JanusError?) {
        view?.showAlert(message: error?.localizedDescription)
    }
    
    
    func janusHasLoginSuccess(authCredential: JanusAuthCredential) {
        view?.openAppsList()
    }
    
}
