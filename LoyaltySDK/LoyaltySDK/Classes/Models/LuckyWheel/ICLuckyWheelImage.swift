//
//	ICLuckyWheelImage.swift
//
//	Create by Duc Dang Trung on 23/6/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLuckyWheelImage : ICBaseModel{

	open var id : String?
	open var medium : String?
	open var original : String?
	open var small : String?
	open var square : String?
	open var thumbnail : String?


	open override func mapping(map: Map)
	{
		id <- map["id"]
		medium <- map["medium"]
		original <- map["original"]
		small <- map["small"]
		square <- map["square"]
		thumbnail <- map["thumbnail"]
		
	}
}
