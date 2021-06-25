//
//	ICWinnerGift.swift
//
//	Create by Duc Dang Trung on 2/7/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICWinnerGift : ICBaseModel{

	open var createdAt : String?
	open var deletedAt : String?
	open var gift : ICLoyGift?
	open var giftId : Int?
	open var id : Int?
	open var updatedAt : String?
	open var winnerId : Int?

	open override func mapping(map: Map)
	{
		createdAt <- map["created_at"]
		deletedAt <- map["deleted_at"]
		gift <- map["gift"]
		giftId <- map["gift_id"]
		id <- map["id"]
		updatedAt <- map["updated_at"]
		winnerId <- map["winner_id"]
		
	}
}
