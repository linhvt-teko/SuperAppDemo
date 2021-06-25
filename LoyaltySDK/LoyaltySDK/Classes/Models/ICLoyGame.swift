//
//  ICLoyGame.swift
//  iCheck
//
//  Created by Tam DV on 6/22/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

public class ICLoyGame: ICBaseModel {
    open var campaignId: Int?
    open var id: Int?
    open var icheckId: Int?
    open var play: Int?
    open var createdAt: String?
    open var updatedAt: String?
    open var campaign: ICLoyCampaign?
    
    
    open override func mapping(map: Map)
    {
        id <- map["id"]
        campaignId <- map["campaignId"]
        icheckId <- map["icheck_id"]
        play <- map["play"]
        createdAt <- map["createdAt"]
        updatedAt <- map["updatedAt"]
        campaign <- map["campaign"]
    }
}
