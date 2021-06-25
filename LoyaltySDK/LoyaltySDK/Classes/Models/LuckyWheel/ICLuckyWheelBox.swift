//
//	ICLuckyWheelBox.swift
//
//	Create by Duc Dang Trung on 23/6/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLuckyWheelBox : ICBaseModel{

	open var boxGames : [ICLuckyWheelBoxGame]?
	open var campaignId : Int?
	open var createdAt : String?
	open var creatorId : Int?
	open var deletedAt : String?
	open var id : Int?
	open var ownerId : Int?
	open var type : String?
	open var updatedAt : String?
    open var gifts : [ICLoyGift]?


	open override func mapping(map: Map)
	{
		boxGames <- map["box_games"]
		campaignId <- map["campaign_id"]
		createdAt <- map["created_at"]
		creatorId <- map["creator_id"]
		deletedAt <- map["deleted_at"]
		id <- map["id"]
		ownerId <- map["owner_id"]
		type <- map["type"]
		updatedAt <- map["updated_at"]
        gifts <- map["gifts"]
		
	}
}
