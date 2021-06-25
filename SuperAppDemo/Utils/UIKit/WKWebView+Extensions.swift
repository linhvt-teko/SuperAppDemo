//
//  WKWebView+Extensions.swift
//  iCheck
//
//  Created by DucDT on 4/17/20.
//  Copyright © 2020 iCheck Corp. All rights reserved.
//

import UIKit
import WebKit

extension WKWebView {
	class func clearCache() {
        HTTPCookieStorage.shared.removeCookies(since: Date.distantPast)
        
        WKWebsiteDataStore.default().fetchDataRecords(ofTypes: WKWebsiteDataStore.allWebsiteDataTypes()) { records in
            records.forEach { record in
                WKWebsiteDataStore.default().removeData(ofTypes: record.dataTypes, for: [record], completionHandler: {})
            }
        }
    }
}
