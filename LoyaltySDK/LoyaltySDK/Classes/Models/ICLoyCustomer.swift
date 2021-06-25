//
//  ICLoyCustomer.swift
//  iCheck
//
//  Created by Tam DV on 3/16/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

open class ICLoyCustomer: ICBaseModel {
    open var icheckId: Int?
    open var name: String?
    open var avatar: String?
    open var phone: String?
    open var email: String?
    open var cityId: Int?
    open var districtId: Int?
    open var wardId: Int?
    open var address: String?
    open var id: Int?
    open var createdAt: String?
    open var updatedAt: String?
    open var deletedAt: String?
    open var note: String?
    
    open override func mapping(map: Map)
    {
        icheckId <- map["icheck_id"]
        avatar <- map["avatar"]
        phone <- map["phone"]
        email <- map["email"]
        id <- map["id"]
        createdAt <- map["created_at"]
        updatedAt <- map["updated_at"]
        deletedAt <- map["deleted_at"]
        name <- map["name"]
        phone <- map["phone"]
        email <- map["email"]
        cityId <- map["city_id"]
        districtId <- map["district_id"]
        wardId <- map["ward_id"]
        address <- map["address"]
        note <- map["note"]
    }
}
