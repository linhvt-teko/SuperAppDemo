//
//	ICLoyWinner.swift
//
//	Create by Duc Dang Trung on 2/7/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLoyWinner : ICBaseModel{

	open var address : String?
	open var avatar : ICLuckyWheelImage?
	open var boxGiftId : Int?
	open var businessOwnerId : Int?
	open var businessOwnerName : String?
	open var campaignId : Int?
	open var cityId : Int?
	open var cityName : String?
	open var code : String?
	open var createdAt : String?
	open var deletedAt : String?
	open var deviceId : String?
	open var districtId : Int?
	open var districtName : String?
	open var email : String?
	open var fullAddress : String?
	open var geo : AnyObject?
	open var icheckId : Int?
	open var id : Int?
	open var ip : AnyObject?
	open var isReceived : Bool?
	open var name : String?
	open var originalTarget : AnyObject?
	open var packageCodeId : AnyObject?
	open var phone : String?
	open var status : String?
	open var statusTime : String?
	open var statusTimeTitle : String?
	open var statusTitle : String?
	open var target : AnyObject?
	open var targetType : String?
	open var updatedAt : String?
	open var wardId : Int?
	open var wardName : String?
	open var winAt : String?
	open var winnerGifts : [ICWinnerGift]?


	open override func mapping(map: Map)
	{
		address <- map["address"]
		avatar <- map["avatar"]
		boxGiftId <- map["box_gift_id"]
		businessOwnerId <- map["business_owner_id"]
		businessOwnerName <- map["business_owner_name"]
		campaignId <- map["campaign_id"]
		cityId <- map["city_id"]
		cityName <- map["city_name"]
		code <- map["code"]
		createdAt <- map["created_at"]
		deletedAt <- map["deleted_at"]
		deviceId <- map["device_id"]
		districtId <- map["district_id"]
		districtName <- map["district_name"]
		email <- map["email"]
		fullAddress <- map["full_address"]
		geo <- map["geo"]
		icheckId <- map["icheck_id"]
		id <- map["id"]
		ip <- map["ip"]
		isReceived <- map["is_received"]
		name <- map["name"]
		originalTarget <- map["original_target"]
		packageCodeId <- map["package_code_id"]
		phone <- map["phone"]
		status <- map["status"]
		statusTime <- map["status_time"]
		statusTimeTitle <- map["status_time_title"]
		statusTitle <- map["status_title"]
		target <- map["target"]
		targetType <- map["target_type"]
		updatedAt <- map["updated_at"]
		wardId <- map["ward_id"]
		wardName <- map["ward_name"]
		winAt <- map["win_at"]
		winnerGifts <- map["winner_gifts"]
		
	}
}
