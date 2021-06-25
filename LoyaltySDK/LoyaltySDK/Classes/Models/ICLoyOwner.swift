//
//  ICLoyOwner.swift
//  iCheck
//
//  Created by Tam DV on 6/29/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

open class ICLoyOwner: ICBaseModel {
    open var id : Int?
    open var name: String?
    open var icheckId: Int?
    open var type: String?
    open var email: String?
    open var phone: String?
    open var logo: ICLuckyWheelImage?
    open var address: String?
    open var cityId : Int?
    open var districtId : Int?
    open var wardId : Int?
    
    open override func mapping(map: Map)
    {
        id <- map["id"]
        name <- map["name"]
        icheckId <- map["icheck_id"]
        type <- map["type"]
        email <- map["email"]
        phone <- map["phone"]
        logo <- map["logo"]
        address <- map["address"]
        cityId <- map["cityId"]
        districtId <- map["districtId"]
        wardId <- map["wardId"]
    }
}
