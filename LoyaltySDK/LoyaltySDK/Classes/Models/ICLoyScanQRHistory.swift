//
//  ICLoyScanQRHistory.swift
//  iCheck
//
//  Created by DucDT on 8/12/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

open class ICLoyScanQRHistory: ICBaseModel {
    open var id : Int?
    open var target: String?
    open var createdAt: String?
    open override func mapping(map: Map)
    {
        id <- map["id"]
        target <- map["target"]
        createdAt <- map["created_at"]
    }
}
