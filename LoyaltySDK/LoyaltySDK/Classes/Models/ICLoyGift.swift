//
//	ICQuestion.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper
import ICheckCore

public enum ICLoyGiftType: String {
    case voucher = "VOUCHER"
	case icoin = "ICOIN"
	case product = "PRODUCT"
	case congratulation = "CONGRATULATION"
	case phoneCard = "PHONE_CARD"
	case receiveStore = "RECEIVE_STORE"
}

open class ICLoyGift : ICBaseModel {

	open var active : Bool?
	open var campaignCount : AnyObject?
	open var createdAt : String?
    open var expiredAt : String?
	open var creatorId : Int?
	open var deletedAt : AnyObject?
	open var descriptionField : String?
	open var icoin : Int?
	open var id : Int?
	open var image : ICLuckyWheelImage?
	open var name : String?
	open var ownerId : Int?
    open var owner : ICLoyOwner?
	open var sponsorType : String?
	open var type : ICLoyGiftType?
	open var updatedAt : String?
    open var shop_image : String?
    open var shop_name : String?
    open var voucher : ICLoyaltyVoucher?
    
	open override func mapping(map: Map)
	{
		active <- map["active"]
		campaignCount <- map["campaign_count"]
		createdAt <- map["created_at"]
        expiredAt <- map["expired_at"]
		creatorId <- map["creator_id"]
		deletedAt <- map["deleted_at"]
		descriptionField <- map["description"]
		icoin <- map["icoin"]
		id <- map["id"]
		image <- map["image"]
		name <- map["name"]
		ownerId <- map["owner_id"]
        owner <- map["owner"]
		sponsorType <- map["sponsor_type"]
		type <- (map["type"], EnumTransform())
		updatedAt <- map["updated_at"]
        shop_image <- map["shop_image"]
        shop_name <- map["shop_name"]
        voucher <- map["voucher"]
	}

}
