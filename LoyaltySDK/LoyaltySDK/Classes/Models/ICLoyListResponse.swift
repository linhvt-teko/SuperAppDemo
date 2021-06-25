//
//  ICListResponse.swift
//  Pods
//
//  Created by DucDT on 9/3/19.
//

import UIKit
import ICheckCore
import ObjectMapper

public class ICLoyListResponse<T: ICBaseModel>: ICBaseModel {
	public var count: Int = 0
	public var items: [T] = []
	
	public override func mapping(map: Map) {
		count <- map["count"]
		items <- map["rows"]
	}
}
