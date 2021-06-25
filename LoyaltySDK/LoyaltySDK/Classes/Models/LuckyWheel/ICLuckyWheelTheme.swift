//
//	ICLuckyWheelTheme.swift
//
//	Create by Duc Dang Trung on 23/6/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLuckyWheelTheme : ICBaseModel{

	open var avatar : ICLuckyWheelImage?
	open var cover : ICLuckyWheelImage?
	open var createdAt : String?
	open var deletedAt : String?
	open var gameId : Int?
	open var id : Int?
	open var imageGameLuckywheelButton : ICLuckyWheelImage?
	open var imageGameLuckywheelEight : ICLuckyWheelImage?
	open var imageGameLuckywheelSix : ICLuckyWheelImage?
	open var imageGameLuckywheelTen : ICLuckyWheelImage?
	open var isPublic : Bool?
	open var name : String?
	open var updatedAt : String?


	open override func mapping(map: Map)
	{
		avatar <- map["avatar"]
		cover <- map["cover"]
		createdAt <- map["created_at"]
		deletedAt <- map["deleted_at"]
		gameId <- map["game_id"]
		id <- map["id"]
		imageGameLuckywheelButton <- map["image_game_luckywheel_button"]
		imageGameLuckywheelEight <- map["image_game_luckywheel_eight"]
		imageGameLuckywheelSix <- map["image_game_luckywheel_six"]
		imageGameLuckywheelTen <- map["image_game_luckywheel_ten"]
		isPublic <- map["is_public"]
		name <- map["name"]
		updatedAt <- map["updated_at"]
		
	}

}
