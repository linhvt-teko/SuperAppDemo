//
//  ICUserOperator.swift
//  Pods
//
//  Created by Mạc Ảnh on 11/14/19.
//

import Foundation
import ICheckCore
import ICheckSDK
//
//public enum ICFollowType: String {
//    case user, product
//}

typealias Parameter = [String: Any]

extension Parameter {
	@discardableResult
	mutating func addParam(_ value: Any?, key: String) -> Any? {
		if let value = value as? String {
			return addParam(stringValue: value, key: key)
		}
		if let value = value as? Int {
			return addParam(intValue: value, key: key)
		}
		if let value = value {
			return updateValue(value, forKey: key)
		}
		return self
	}
	
	@discardableResult
	mutating func addParam(stringValue: String?, key: String) -> Any? {
		guard let stringValue = stringValue?.trimmingCharacters(in: .whitespacesAndNewlines), !stringValue.isEmpty else {
			return self
		}
		return updateValue(stringValue, forKey: key)
	}
	
	@discardableResult
	mutating func addParam(intValue: Int?, key: String) -> Any? {
		guard let value = intValue else {
			return self
		}
		return updateValue(value, forKey: key)
	}
}


public class ICLoyaltyOperator: NSObject {
    public static func getLoyaltyCampaign(id: String, onSuccess: LoySuccessBlock<ICLoyCampaign>?, onFault: LoyFaultBlock? = nil) {
        ICLoyOperator.shared.getItem(api: apis.Campaign.loyaltyCampaignInfo, pathParameters: [id], onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func markUsed(code: String, customer: ICLoyCustomer, onSuccess: LoySuccessBlock<ICLoyGift>?,onFault: LoyFaultBlock? = nil) {
        var parameter:[String:Any] = customer.toJSON()
        parameter.updateValue(code, forKey: "voucher_code")
        ICLoyOperator.shared.postItem(api: apis.Campaign.markUsed, parameters: parameter, onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func voucherScanInfo(code: String, onSuccess: LoySuccessBlock<ICLoyGift>?,onFault: LoyFaultBlock? = nil) {
        ICLoyOperator.shared.postItem(api: apis.Campaign.voucherScanInfo, parameters: ["voucher": code], onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func detailCampaign(idCampaign: Int, onSuccess: LoySuccessBlock<ICLoyCampaign>?,
                                      onFault: LoyFaultBlock? = nil) {
        
        ICLoyOperator.shared.getItem(api: apis.Campaign.detailCampaign, pathParameters: [idCampaign], onSuccess: onSuccess, onFault: onFault)
        
    }
	
	public static func campaignDetail(id: Int, onSuccess: LoySuccessBlock<ICLoyCampaign>?,
                                      onFault: LoyFaultBlock? = nil) {
        
        ICLoyOperator.shared.getItem(api: apis.Campaign.campaignDetail, pathParameters: [id], onSuccess: onSuccess, onFault: onFault)
        
    }
    
    public static func checkExistCampaign(target: String, onSuccess: LoySuccessBlock<ICLoyCampaign>?,
                                          onFault: LoyFaultBlock? = nil) {
        let parameter:[String:Any] = ["target":target]
        ICLoyOperator.shared.getItem(api: apis.Campaign.getCampaign, parameters: parameter, onSuccess: onSuccess, onFault: onFault)
        
    }
    
    public static func checkCodeGetGift(target: String? = nil, customer: ICLoyCustomer?, campaignId: Int? = nil, code: String? = nil, campaignCode: String? = nil, giftCode: String? = nil, onSuccess: LoySuccessBlock<ICLoyGiftResponse>?, onFault: LoyFaultBlock? = nil) {
        var parameter:[String:Any] = [:]
        if let target = target {
            parameter.addParam(target, key: "target")
        }
        if let campaignCode = campaignCode {
            parameter.addParam(campaignCode, key: "campaign_code")
        }
        if let giftCode = giftCode {
            parameter.addParam(giftCode, key: "gift_code")
        }
		if let code = code, !code.isEmpty {
			parameter.updateValue(code, forKey: "code")
		}
        if let campaignId = campaignId {
            parameter.addParam(campaignId, key: "campaign_id")
        }
        customer?.toJSON().forEach { key, value in
            parameter.addParam(value, key: key)
        }
        ICLoyOperator.shared.postItem(api: apis.Campaign.checkCodeGetGift, parameters: parameter, onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func getGamePlayTurn(campaignId: Int? = nil, target: String? = nil, campaignCode: String? = nil, specialTurnCode: String? = nil, customer: ICLoyCustomer? = nil, code: String? = nil, onSuccess: LoySuccessBlock<ICLoyGamePlayResponse>?,
                                        onFault: LoyFaultBlock? = nil) {
        var parameter:[String:Any] = [:]
        if let code = code {
            parameter.addParam(code, key: "code")
        }
        if let campaignId = campaignId {
            parameter.addParam(campaignId, key: "campaign_id")
        }
        if let campaignCode = campaignCode {
            parameter.addParam(campaignCode, key: "campaign_code")
        }
        if let specialTurnCode = specialTurnCode {
            parameter.addParam(specialTurnCode, key: "special_turn_code")
        }
        if let target = target {
            parameter.addParam(target, key: "target")
        }
        if let customer = customer {
            parameter.addParam(customer.name, key: "name")
            parameter.addParam(customer.phone, key: "phone")
            parameter.addParam(customer.email, key: "email")
            parameter.addParam(customer.cityId, key: "city_id")
            parameter.addParam(customer.districtId, key: "district_id")
            parameter.addParam(customer.wardId, key: "ward_id")
            parameter.addParam(customer.address, key: "address")
            parameter.addParam(customer.avatar, key: "avatar")
        }
        ICLoyOperator.shared.postItem(api: apis.Campaign.getGamePlayTurn, parameters: parameter, onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func getListMyGift(onSuccess: LoySuccessBlock<ICLoyListResponse<ICRewardItem>>?,
                                     onFault: LoyFaultBlock? = nil) {
        let parameter:[String:Any] = ["limit":20]
        ICLoyOperator.shared.listItemsWithCount(api: apis.Campaign.myGifts, parameters: parameter, onSuccess:onSuccess, onFault:  onFault)
    }
    
    public static func detailMyGift(id: String, onSuccess: LoySuccessBlock<ICRewardItem>?,
                                    onFault: LoyFaultBlock? = nil) {
        
        ICLoyOperator.shared.getItem(api: apis.Campaign.detailMyGift, pathParameters: [id], onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func rejectMyGift(winnerId: String, onSuccess: LoySuccessBlock<ICLoyWinnerResponse>?,
                                    onFault: LoyFaultBlock? = nil) {
//        var parameter:[String:Any] = ["status":"refused_gift"]
        ICLoyOperator.shared.postItem(api: apis.Campaign.rejectGift, pathParameters: [winnerId], onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func receiveMyGift(winnerId: String, customer: ICLoyCustomer, onSuccess: LoySuccessBlock<ICLoyWinnerResponse>?,
                                     onFault: LoyFaultBlock? = nil) {
        var parameter:[String:Any] = customer.toJSON()
        parameter.addParam("waiting_receive_gift", key: "status")
		customer.toJSON().forEach { key, value in
			parameter.addParam(value, key: key)
		}
        ICLoyOperator.shared.patchItem(api: apis.Campaign.receiveGift,pathParameters: [winnerId], parameters: parameter, onSuccess: onSuccess, onFault: onFault)
    }
    
    public static func getListMyGames(offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyGame]>?, onFault: LoyFaultBlock? = nil) {
        ICLoyOperator.shared.listItems(api: apis.Game.listMyGame, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
	
	public static func getListMyCampaigns(offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyCampaign]>?, onFault: LoyFaultBlock? = nil) {
        ICLoyOperator.shared.listItems(api: apis.Campaign.listMyCampaigns, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
    
    public static func getListMyHistoriesCode(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyCode]>?, onFault: LoyFaultBlock? = nil) {
        let parameter:[String:Any] = ["campaign_id" : campaignId]
        ICLoyOperator.shared.listItems(api: apis.Campaign.listHistoriesCode, parameters: parameter, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
	
	public static func getListScanQRHistories(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyScanQRHistory]>?, onFault: LoyFaultBlock? = nil) {
        let parameter:[String:Any] = ["campaign_id" : campaignId]
        ICLoyOperator.shared.listItems(api: apis.Campaign.listScanQRHistories, parameters: parameter, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
	
	public static func getListRewards(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICWinnerGift]>?, onFault: LoyFaultBlock? = nil) {
        let parameter:[String:Any] = ["campaign_id" : campaignId]
        ICLoyOperator.shared.listItems(api: apis.Campaign.listRewards, parameters: parameter, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
	
	public static func exchangeCard(winnerId: String,
                                    name: String? = nil,
                                    phone: String? = nil,
                                    email: String? = nil,
                                    cityId: Int? = nil,
                                    districtId: Int? = nil,
                                    wardId: Int? = nil,
                                    address: String? = nil,
                                    cardPhone: String,
                                    cardService: Int, onSuccess: LoySuccessBlock<ICWinnerGift>?,
									onFault: LoyFaultBlock? = nil) {
		var params = [String: Any]()
        params.updateValue(winnerId, forKey: "winner_id")
        params.updateValue(name, forKey: "name")
        params.updateValue(phone, forKey: "phone")
        params.updateValue(cardPhone, forKey: "receiver_phone")
        params.updateValue(email, forKey: "email")
        params.updateValue(cityId, forKey: "city_id")
        params.updateValue(districtId, forKey: "district_id")
        params.updateValue(wardId, forKey: "ward_id")
        params.updateValue(address, forKey: "address")
		params.updateValue(cardService, forKey: "serviceId")
		ICLoyOperator.shared.postItem(api: apis.Campaign.exchangeCard, parameters: params, onSuccess: onSuccess, onFault: onFault)
	}
    
    public static func exchangeVoucher(winnerId: String,
                                       name: String? = nil,
                                       phone: String? = nil,
                                       receiver_phone: String? = nil,
                                       email: String? = nil,
                                       cityId: Int? = nil,
                                       districtId: Int? = nil,
                                       wardId: Int? = nil,
                                       address: String? = nil, onSuccess: LoySuccessBlock<ICWinnerGift>?,
                                    onFault: LoyFaultBlock?) {
        var params = [String: Any]()
        params.updateValue(winnerId, forKey: "winner_id")
        params.addParam(name, key: "name")
        params.addParam(phone, key: "phone")
        params.addParam(receiver_phone, key: "receiver_phone")
        params.addParam(email, key: "email")
        params.addParam(cityId, key: "city_id")
        params.addParam(districtId, key: "district_id")
        params.addParam(wardId, key: "ward_id")
        params.addParam(address, key: "address")
        ICLoyOperator.shared.postItem(api: apis.Campaign.exchangeCard, parameters: params, onSuccess: onSuccess, onFault: onFault)
    }
}


