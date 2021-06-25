//
//  ICLoyPointResponse.swift
//  Pods
//
//  Created by DucDT on 9/19/20.
//

import UIKit
import ICheckCore
import ObjectMapper

open class ICLoyPointResponse: ICBaseModel {
	open var point: Int = 0
	open var owner: ICLoyOwner?
	open var campaign: ICLoyCampaign?
	
	open override func mapping(map: Map) {
		point <- map["point"]
		owner <- map["statistic.owner"]
		campaign <- map["statistic.campaign"]
	}
}
