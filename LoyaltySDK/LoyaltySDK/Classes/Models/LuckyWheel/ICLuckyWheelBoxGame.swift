//
//	ICLuckyWheelBoxGame.swift
//
//	Create by Duc Dang Trung on 23/6/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLuckyWheelBoxGame : ICBaseModel{

	open var boxId : Int?
	open var campaignSponsorId : Int?
	open var chance : Int?
	open var createdAt : String?
	open var deletedAt : AnyObject?
	open var gift : ICLoyGift?
	open var giftId : Int?
	open var giftLevel : AnyObject?
	open var id : Int?
	open var isAllowSponsorGift : Bool?
	open var quota : Int?
	open var reason : String?
	open var sponsorId : Int?
	open var updatedAt : String?


	open override func mapping(map: Map)
	{
		boxId <- map["box_id"]
		campaignSponsorId <- map["campaign_sponsor_id"]
		chance <- map["chance"]
		createdAt <- map["created_at"]
		deletedAt <- map["deleted_at"]
		gift <- map["gift"]
		giftId <- map["gift_id"]
		giftLevel <- map["gift_level"]
		id <- map["id"]
		isAllowSponsorGift <- map["is_allow_sponsor_gift"]
		quota <- map["quota"]
		reason <- map["reason"]
		sponsorId <- map["sponsor_id"]
		updatedAt <- map["updated_at"]
		
	}

}
