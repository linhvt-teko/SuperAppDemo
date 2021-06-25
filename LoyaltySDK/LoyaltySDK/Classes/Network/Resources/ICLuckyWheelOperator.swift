//
//  ICLuckyWheelOperator.swift
//  iCheck
//
//  Created by DucDT on 6/24/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

public class ICGameAgent: ICBaseModel {
	public var name: String?
	public var phone: String?
	public var email: String?
	public var avatar: String?
	public var logo: String?
	public var cityId: Int?
	public var districtId: Int?
	public var wardId: Int?
	public var address: String?
	
	public override func mapping(map: Map) {
		name <- map["name"]
		phone <- map["phone"]
		email <- map["email"]
		avatar <- map["avatar"]
		logo <- map["logo"]
		cityId <- map["city_id"]
		districtId <- map["district_id"]
		wardId <- map["ward_id"]
		address <- map["address"]
	}
}

public class ICLuckyWheelOperator: NSObject {
	public static func getLuckyWheelDetail(campaignId: Int, onSuccess: LoySuccessBlock<ICLuckyWheel>?, onFault: LoyFaultBlock? = nil) {
		ICLoyOperator.shared.getItem(api: apis.Game.luckyWheelCampaign(id: campaignId), onSuccess: onSuccess, onFault: onFault)
	}
	
	public static func playGame(campaignId: Int, agent: ICGameAgent?, onSuccess: LoySuccessBlock<ICLuckyWheelResult>?, onFault: LoyFaultBlock? = nil) {
		var params = agent?.toJSON() ?? [String: Any]()
		params.updateValue(campaignId, forKey: "campaign_id")
		agent?.toJSON().forEach { key, value in
			params.addParam(value, key: key)
		}
		ICLoyOperator.shared.postItem(api: apis.Game.playGame, parameters: params, onSuccess: onSuccess, onFault: onFault)
	}
	
	public static func getListTopWinners(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyWinner]>?, onFault: LoyFaultBlock? = nil) {
		ICLoyOperator.shared.listItems(api: apis.Game.listTopWinners, parameters: ["campaign_id": campaignId], offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
	}
	
	public static func getListWinners(campaignId: Int, offset: Int?, limit: Int?, onSuccess: LoySuccessBlock<[ICLoyWinner]>?, onFault: LoyFaultBlock? = nil) {
		ICLoyOperator.shared.listItems(api: apis.Game.listWinners(campaignId: campaignId), offset: offset, limit: limit, onSuccess:onSuccess, onFault:  onFault)
	}
}
