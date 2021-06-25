//
//	ICLuckyWheelCampaign.swift
//
//	Create by Duc Dang Trung on 23/6/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

public typealias ICLuckyWheelCampaign = ICLoyCampaign

open class ICLuckyWheelCampaign1 : ICBaseModel{

	open var balance : Int?
	open var benefit : Int?
	open var box : ICLuckyWheelBox?
	open var businessOwnerId : Int?
	open var createdAt : String?
	open var creatorId : Int?
	open var deletedAt : String?
	open var descriptionField : String?
	open var endAt : String?
	open var exportGiftFrom : String?
	open var exportGiftTo : String?
	open var gameId : Int?
	open var hasChanceCode : Bool?
	open var id : Int?
	open var image : ICLuckyWheelImage?
	open var name : String?
	open var ownerId : Int?
	open var publishAt : String?
	open var publishType : AnyObject?
	open var reason : AnyObject?
	open var startAt : String?
	open var status : String?
	open var statusTime : String?
	open var statusTimeTitle : String?
	open var statusTitle : String?
	open var targetType : String?
	open var theme : ICLuckyWheelTheme?
	open var themeId : Int?
	open var themeImage : AnyObject?
	open var type : String?
	open var updatedAt : String?
	open var userCount : AnyObject?
	open var winnerCount : Int?


	open override func mapping(map: Map)
	{
		balance <- map["balance"]
		benefit <- map["benefit"]
		box <- map["box"]
		businessOwnerId <- map["business_owner_id"]
		createdAt <- map["created_at"]
		creatorId <- map["creator_id"]
		deletedAt <- map["deleted_at"]
		descriptionField <- map["description"]
		endAt <- map["end_at"]
		exportGiftFrom <- map["export_gift_from"]
		exportGiftTo <- map["export_gift_to"]
		gameId <- map["game_id"]
		hasChanceCode <- map["has_chance_code"]
		id <- map["id"]
		image <- map["image"]
		name <- map["name"]
		ownerId <- map["owner_id"]
		publishAt <- map["publish_at"]
		publishType <- map["publish_type"]
		reason <- map["reason"]
		startAt <- map["start_at"]
		status <- map["status"]
		statusTime <- map["status_time"]
		statusTimeTitle <- map["status_time_title"]
		statusTitle <- map["status_title"]
		targetType <- map["target_type"]
		theme <- map["theme"]
		themeId <- map["theme_id"]
		themeImage <- map["theme_image"]
		type <- map["type"]
		updatedAt <- map["updated_at"]
		userCount <- map["user_count"]
		winnerCount <- map["winner_count"]
		
	}
}
