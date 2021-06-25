//
//	ICQuestion.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

open class ICLoyGiftResponse : ICBaseModel {

	open var message : String?
	open var gift : ICLoyGift?
    open var gifts : [ICLoyGift]?
    open var winner : ICLoyWinner?
   
	open override func mapping(map: Map)
	{
		message <- map["message"]
		gift <- map["gift"]
        gifts <- map["gifts"]
        winner <- map["winner"]
	}

}
