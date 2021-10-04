//
//  TerraManager.swift
//  SuperAppDemo
//
//  Created by linhvt on 01/10/2021.
//

import Foundation
import TerraInstancesManager
import Terra
import Hestia
import LoyaltyCore
import MinervaUI
import JanusUI
import Janus
import ApolloTheme
import TekIrisService

var terraApp        = TerraManager.shared.terraApp!
var terraHestia     = TerraHestia.getInstance(by: TerraManager.shared.terraApp)
var terraAuth       = TerraAuth.getInstance(by: TerraManager.shared.terraApp)
var terraAuthUI     = TerraAuthUI.getInstance(by: TerraManager.shared.terraApp)
var terraPaymentUI  = TerraPaymentUI.getInstance(by: TerraManager.shared.terraApp)

class TerraManager {
    
    public static let shared = TerraManager()

    var terraApp: ITerraApp!
    
    var isTerraLoaded: Bool { return terraApp != nil }
    
    func loadTerra(completion: @escaping (Bool) -> Void) {
        TerraApp.configure(appName: "SuperAppDemo") { (isSuccess, terraApp) in
            guard isSuccess else {
                completion(false)
                return
            }
            TerraManager.shared.terraApp = terraApp
            TerraAuthUI.configureWith(app: terraApp)
            TerraAuth.auth(app: terraApp).registerGoogle()
            TerraPaymentUI.configureWith(app: terraApp)
            TerraTheme.configureWith(app: terraApp)
            TerraIris.configureWith(app: terraApp)
            TerraHestia.configureWith(app: terraApp)
            completion(isSuccess)
        }
    }

}
