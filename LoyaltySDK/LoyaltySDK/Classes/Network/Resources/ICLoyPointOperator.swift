//
//  ICLoyPointOperator.swift
//  Pods
//
//  Created by DucDT on 9/11/20.
//

public class ICLoyPointOperator: NSObject {
    public static func getDetailGiftExchange(winnerId: Int, onSuccess: LoySuccessBlock<ICLoyPointGift>?, onFault: LoyFaultBlock?) {
        ICLoyOperator.shared.getItem(api: apis.Point.giftExchangeDetail(winnerId: winnerId), onSuccess:onSuccess, onFault:  onFault)
    }
    
	public static func listAvailableRewards(campaignId: Int, offset: Int? = nil, limit: Int? = nil, onSuccess: LoySuccessBlock<[ICLoyPointGift]>?, onFault: LoyFaultBlock?) {
		ICLoyOperator.shared.listItems(api: apis.Point.listAvailableGifts(campaignId: campaignId), offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func getUserPointInfo(campaignId: Int, onSuccess: LoySuccessBlock<ICLoyWinnerPoint>?, onFault: LoyFaultBlock?) {
		ICLoyOperator.shared.getItem(api: apis.Point.userPointInfo(campaignId: campaignId), onSuccess:onSuccess, onFault:  onFault)
	}
	
    public static func gotPoint(campaignId: Int, target: String? = nil, customer: ICLoyCustomer? = nil, code: String? = nil, campaignCode: String? = nil, giftCode: String? = nil, onSuccess: LoySuccessBlock<ICLoyPointResponse>?, onFault: LoyFaultBlock?) {
		var params = [String: Any]()
		params.addParam(campaignId, key: "campaign_id")
		params.addParam(target, key: "target")
		params.addParam(code, key: "code")
		if let customer = customer {
			params.addParam(customer.name, key: "name")
			params.addParam(customer.phone, key: "phone")
			params.addParam(customer.email, key: "email")
			params.addParam(customer.cityId, key: "city_id")
			params.addParam(customer.districtId, key: "district_id")
			params.addParam(customer.wardId, key: "ward_id")
			params.addParam(customer.address, key: "address")
			params.addParam(customer.avatar, key: "avatar")
		}
        if let campaignCode = campaignCode {
            params.addParam(campaignCode, key: "campaign_code")
        }
        if let giftCode = giftCode {
            params.addParam(giftCode, key: "gift_code")
        }
		ICLoyOperator.shared.postItem(api: apis.Point.gotPoint, parameters: params, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func getListTopWinners(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyWinnerPoint]>?, onFault: LoyFaultBlock? = nil) {
		ICLoyOperator.shared.listItems(api: apis.Point.listTopWinners(campaignId: campaignId), offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func getListWinners(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyWinnerPoint]>?, onFault: LoyFaultBlock? = nil) {
		ICLoyOperator.shared.listItems(api: apis.Point.listWinners(campaignId: campaignId), offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func exchangeReward(campaignId: Int, giftId: Int, customer: ICLoyCustomer? = nil, onSuccess: LoySuccessBlock<ICLoyPointGift>?, onFault: LoyFaultBlock? = nil) {
		var params = [String: Any]()
		params.addParam(campaignId, key: "campaign_id")
		params.addParam(giftId, key: "gift_id")
		customer?.toJSON().forEach { key, value in
			params.addParam(value, key: key)
		}
		ICLoyOperator.shared.postItem(api: apis.Point.exchangeGift, parameters: params, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func exchangeCard(campaignId: Int, giftId: Int, customer: ICLoyCustomer? = nil, cardPhone: String, cardService: Int, onSuccess: LoySuccessBlock<ICLoyPointGift>?, onFault: LoyFaultBlock? = nil) {
		var params = [String: Any]()
		params.addParam(campaignId, key: "campaign_id")
		params.addParam(giftId, key: "gift_id")
		params.addParam(cardPhone, key: "receiver_phone")
		params.addParam(cardService, key: "serviceId")
		customer?.toJSON().forEach { key, value in
			params.addParam(value, key: key)
		}
		ICLoyOperator.shared.postItem(api: apis.Point.exchangeGift, parameters: params, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func getListRewards(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyPointGift]>?, onFault: LoyFaultBlock? = nil) {
        let parameter:[String:Any] = ["campaign_id" : campaignId]
        ICLoyOperator.shared.listItems(api: apis.Campaign.listRewards, parameters: parameter, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
	
	public static func getListPointHistories(campaignId: Int, type: ICLoyPointHistoryType?, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyPointHistory]>?, onFault: LoyFaultBlock? = nil) {
        var params = [String:Any]()
		if let type = type?.rawValue {
			params.updateValue(type, forKey: "type")
		}
		ICLoyOperator.shared.listItems(api: apis.Point.pointHistories(campaignId: campaignId), parameters: params, offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
    }
}
