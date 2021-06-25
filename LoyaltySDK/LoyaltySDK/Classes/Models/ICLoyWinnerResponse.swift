//
//  ICLoyWinnerResponse.swift
//  iCheck
//
//  Created by Tam DV on 3/16/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import ObjectMapper
import ICheckCore

open class ICLoyWinnerResponse: ICBaseModel {
    
       open var message: String?
       open var winner: ICLoyWinner?
      
       
       
       
       open override func mapping(map: Map)
       {
           message <- map["message"]
           winner <- map["winner"]
       }
}
