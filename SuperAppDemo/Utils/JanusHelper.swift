//
//  JanusHelper.swift
//  SuperAppDemo
//
//  Created by linhvt on 3/2/21.
//

import Foundation
import AuthenticationServices
import Janus

protocol JanusLoginHelperDelegate: class {
    func janusHasLoggedIn(isSuccess: Bool)
}

class JanusHelper {
    
    static let shared = JanusHelper()
    
    weak var delegate: JanusLoginHelperDelegate?
    
    func loginFacebook(presentVC: UIViewController, delegate: JanusLoginHelperDelegate?) {
        self.delegate = delegate
        do {
            
            try TerraLoginManager.getInstances(by: terraApp)?.login(FacebookLoginUI(presentViewController: presentVC, delegate: self))
        } catch {
            print(error)
        }
    }
    
    func loginGooglePlus(presentVC: UIViewController, delegate: JanusLoginHelperDelegate?) {
        self.delegate = delegate
        do {
            try TerraLoginManager.getInstances(by: terraApp)?.login(GoogleLoginUI(presentViewController: presentVC, delegate: self))
        } catch {
            print(error)
        }
    }
    
    @available(iOS 13.0, *)
    func loginApple(presentVC: UIViewController & ASAuthorizationControllerPresentationContextProviding, delegate: JanusLoginHelperDelegate?) {
        self.delegate = delegate
        do {
            try TerraLoginManager.getInstances(by: terraApp)?.login(AppleLoginUI(presentViewController: presentVC, delegate: self))
        } catch {
            print(error)
        }

    }

    func passwordlessSubmitPhone(_ phoneNumber: String, completion: @escaping (Bool) -> ()) {
        TerraPhoneAuthProvider.getInstances(by: terraApp)?.requestOTP(phone: phoneNumber) { (isSuccess, errorCode)  in
            completion(isSuccess)
        }
    }
    
    func passwordlessSubmitOTP(_ phoneNumber: String, otp: String, delegate: JanusLoginHelperDelegate?) {
        self.delegate = delegate
        if let credential = TerraPhoneAuthProvider.getInstances(by: terraApp)?.createPasswordlessLogin(pin: otp) {
            do {
                try TerraLoginManager.getInstances(by: terraApp)?.login(credential: credential, delegate: self)
            } catch {
                print(error)
            }
        } else {
            delegate?.janusHasLoggedIn(isSuccess: false)
        }
    }
    
}

extension JanusHelper: JanusLoginDelegate {
    
    func janusWillGetAuthCredential() {
        
    }
 
    func janusHasLoginSuccess(authCredential: JanusAuthCredential) {
        print(TerraAuthManager.getInstances(by: terraApp)?.authorizationToken!)
        delegate?.janusHasLoggedIn(isSuccess: true)
    }
    
    func janusHasLoginFail(error: JanusError?) {
        print(error?.errorDescription ?? "janus login fail")
        delegate?.janusHasLoggedIn(isSuccess: false)
    }
    
}
