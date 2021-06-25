//
//  ICLoyWinnerPoint.swift
//  Pods
//
//  Created by DucDT on 9/10/20.
//

import UIKit
import ICheckCore
import ObjectMapper

open class ICLoyWinnerPoint: ICBaseModel {
	open var id: Int?
	open var points: Int?
	open var totalPoints: Int?
	open var name: String?
	open var phone: String?
	open var avatar: ICLuckyWheelImage?
	open var createdAt: String?
	open var winner: ICLoyWinner?
	
	open override func mapping(map: Map) {
		id <- map["id"]
		points <- map["points"]
		totalPoints <- map["total_points"]
		name <- map["name"]
		phone <- map["phone"]
		avatar <- map["avatar"]
		createdAt <- map["created_at"]
		winner <- map["winner"]
	}
}
