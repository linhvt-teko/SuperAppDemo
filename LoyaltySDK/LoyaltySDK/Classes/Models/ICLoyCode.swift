//
//  ICLoyCode.swift
//  iCheck
//
//  Created by Tam DV on 7/8/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

public class ICLoyCode: ICBaseModel {
    open var id : Int?
    open var code: String?
    open var createdAt: String?
    open override func mapping(map: Map)
    {
        id <- map["id"]
        code <- map["code"]
        createdAt <- map["created_at"]
    }
}
