//
//  ICResponse.swift
//  ICheckSDKV5
//
//  Created by DucDT on 8/27/19.
//

import UIKit
import ICheckCore
import ICheckNetworking
import ObjectMapper

open class ICLoyNetworkResponse: ICBaseModel, ICNetworkingResponseType {
	open var data: Any?
	
	open var status: Int = 0
	
	open var error: Error?
	
	open var message: String?
	
	public required init() {
		super.init()
	}
	
	required public init(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	required public init?(map: Map) {
		super.init(map: map)
	}
	
	open override func mapping(map: Map) {
		data <- map["data"]
		status <- map["statusCode"]
		error <- map["error"]
		message <- map["message"]
	}
	
}
