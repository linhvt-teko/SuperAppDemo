//
//	ICLuckyWheel.swift
//
//	Create by Duc Dang Trung on 23/6/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLuckyWheel : ICBaseModel{

	open var campaign : ICLuckyWheelCampaign?
	open var play : Int?


	open override func mapping(map: Map)
	{
		campaign <- map["campaign"]
		play <- map["play"]
		
	}
}
