//
//  TripiPrepaidEnv.swift
//  TripiPrepaidConnector
//
//  Created by linhvt on 04/10/2021.
//

import Foundation
import TripiPrepaidKit

extension TripiPrepaidKit.ENV {
    init(rawEnv: String?) {
        guard let value = rawEnv, !value.isEmpty else {
            self = .dev
            return
        }
        switch value {
        case "dev":
            self = .dev
        case "stage":
            self = .staging
        case "prod":
            self = .production
        default:
            self = .dev
        }
    }
}
