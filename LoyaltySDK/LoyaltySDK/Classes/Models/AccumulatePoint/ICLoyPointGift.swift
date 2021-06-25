//
//  ICLoyPointGift.swift
//  Pods
//
//  Created by DucDT on 9/11/20.
//

import ICheckCore
import ObjectMapper

open class ICLoyPointGift: ICBaseModel {
	open var id: Int?
	open var points: Int?
	open var gift: ICLoyGift?
	open var totalGift: Int?
	open var giftUsed: Int?
	open var quota: Int?
	open var winner: ICLoyWinner?
	open var createdAt: String?
	open var exportGiftTo: String?
	open var exportGiftFrom: String?
    open var voucher: ICLoyaltyVoucher?
    open var boxGift: ICLoyBoxGift?
    open var status: String?
    open var statusTitle: String?
    
	open override func mapping(map: Map) {
		id <- map["id"]
		points <- map["points"]
		gift <- map["gift"]
		totalGift <- map["total_gift"]
		giftUsed <- map["gift_used"]
		quota <- map["quota"]
		winner <- map["winner"]
		createdAt <- map["created_at"]
		exportGiftTo <- map["export_gift_to"]
		exportGiftFrom <- map["export_gift_from"]
        voucher <- map["voucher"]
        boxGift <- map["box_gift"]
        status <- map["status"]
        statusTitle <- map["status_title"]
        
		if exportGiftTo == nil {
			exportGiftTo <- map["campaign.export_gift_to"]
		}
		if exportGiftFrom == nil {
			exportGiftFrom <- map["campaign.export_gift_from"]
		}
	}
}

open class ICLoyBoxGift: ICBaseModel {
    open var id: Int?
    open var points: Int?
    open var gift_used: Int?
    open var totalGift: Int?
    
    open override func mapping(map: Map) {
        id <- map["id"]
        points <- map["points"]
        gift_used <- map["gift_used"]
        totalGift <- map["total_code"]
    }
}

public class ICLoyaltyVoucher: ICBaseModel {
    open var code: String?
    open var expiredAt: String?
    open var canUse: Bool?
    open var canMark: Bool?
    open var checker: ICVoucherChecker?
    open var end_at: String?
    open var released_at: String?
    open var effective_type: String?
    open var mark_use: Bool?
    open var effective_time: String? // Có hiệu lực sau ... tiếng release
    open var start_at: String?
    open var is_enable_range_time: Bool?
    open var is_enable_effective_time: Bool?
    
    public override func mapping(map: Map) {
        code <- map["code"]
        expiredAt <- map["expired_at"]
        canUse <- map["can_use"]
        canMark <- map["can_mark_use"]
        checker <- map["checked_condition"]
        end_at <- map["end_at"]
        released_at <- map["released_at"]
        effective_type <- map["effective_type"]
        mark_use <- map["mark_use"]
        effective_time <- map["effective_time"]
        start_at <- map["start_at"]
        is_enable_range_time <- map["is_enable_range_time"]
        is_enable_effective_time <- map["is_enable_effective_time"]
    }
}

public class ICVoucherChecker: ICBaseModel {
    open var status: Bool?
    open var message: String?
    open var code: String?
    
    public override func mapping(map: Map) {
        code <- map["code"]
        status <- map["status"]
        message <- map["message"]
    }
}
