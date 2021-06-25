//
//  ICLoyGamePlayResponse.swift
//  iCheck
//
//  Created by Tam DV on 6/29/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

public class ICLoyGamePlayResponse: ICBaseModel {
    open var campaign : ICLoyCampaign?
    open var play : Int?
    
    open override func mapping(map: Map)
    {
        campaign <- map["campaign"]
        play <- map["play"]
    }
    
}
