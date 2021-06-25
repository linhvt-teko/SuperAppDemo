//
//  ICError.swift
//  ICheckSDKV5
//
//  Created by DucDT on 8/27/19.
//

import UIKit
import ICheckCore
import ICheckNetworking
import ObjectMapper

open class ICLoyNetworkError: ICBaseModel & ICNetworkingErrorType {
	open var error: Error?
    open var errorDescription: String?
	open var message: String?
	
	open var status: Int = 0
	open var statusString: String?
	
	open override func mapping(map: Map) {
		error <- map["error"]
		message <- map["message"]
		status <- map["statusCode"]
        errorDescription <- map["error_description"]
		statusString <- map["status"]
	}
}
