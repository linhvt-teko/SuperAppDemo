//
//  ICLoyPointHistory.swift
//  Pods
//
//  Created by DucDT on 9/17/20.
//

import ICheckCore
import ObjectMapper

public enum ICLoyPointHistoryType: String {
	case gotPoint = "accumulate-points"
	case exchangeGift = "exchange-gift"
}

open class ICLoyPointHistory: ICBaseModel {
	open var id: Int?
	open var points: Int?
	open var code: String?
	open var serial: String?
	open var giftName: String?
	open var avatar: ICLuckyWheelImage?
	open var message: String?
	open var createdAt: String?
	
	open override func mapping(map: Map) {
		id <- map["id"]
		points <- map["points"]
		code <- map["code"]
		serial <- map["serial"]
		giftName <- map["gift_name"]
		avatar <- map["avatar"]
		message <- map["message"]
		createdAt <- map["created_at"]
	}
}
