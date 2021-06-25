//
//  ICLoyInstance.swift
//  LoyaltySDK
//
//  Created by DucDT on 8/27/19.
//

import UIKit
import ICheckNetworking

open class ICLoyInstance: ICBaseInstance {
	fileprivate static var _shared: ICLoyInstance?
    public static var shared: ICLoyInstance {
        if _shared == nil {
            _shared = ICLoyInstance()
        }
        return _shared!
    }
	
	
    public var authorizationBlock: (() -> (String)?)?
    public var deviceBlock: (() -> (String)?)?
	public var location: (() -> (String, String)?)?
}
