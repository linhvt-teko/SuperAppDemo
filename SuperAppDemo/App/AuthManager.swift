//
//  AuthManager.swift
//  SuperAppDemo
//
//  Created by linhvt on 01/10/2021.
//

import Foundation
import Janus
 
class AuthManager {
    
    static let shared = AuthManager()

    var isLoggedIn: Bool {
        return terraAuth?.isAuthorized ?? false
    }
    
}
