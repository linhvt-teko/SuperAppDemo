//
//  ICLoyGameUser.swift
//  Pods
//
//  Created by DucDT on 9/10/20.
//

import ICheckCore
import ObjectMapper

open class ICLoyGameUser: ICBaseModel {
	open var play: Int?
	
	open override func mapping(map: Map) {
		play <- map["play"]
	}
}
