//
//  ICLuckyWheelResult.swift
//  iCheck
//
//  Created by DucDT on 6/24/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

public enum PlayStatus: String {
    case SUCCESS
    case OUT_OF_TURN
    case OUT_OF_GIFT
}

open class ICLuckyWheelResult: ICBaseModel {
	open var message: String?
	open var gifts: [ICLoyGift]?
    open var status: PlayStatus?
    open var play: Int?
	open var winner: ICLoyWinner?
	
	open override func mapping(map: Map) {
		message <- map["message"]
		gifts <- map["gifts"]
        status <- (map["status"], EnumTransform())
        play <- map["play"]
		winner <- map["winner"]
    }
}
