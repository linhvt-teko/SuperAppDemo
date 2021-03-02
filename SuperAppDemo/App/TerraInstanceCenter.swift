//
//  TerraInstanceCenter.swift
//  SuperAppDemo
//
//  Created by linhvt on 3/2/21.
//

import Foundation
import Terra
import TerraInstancesManager

public var terraApp: ITerraApp = TerraInstanceCenter.shared.getTerraApp()

public class TerraInstanceCenter {
    
    public static let shared = TerraInstanceCenter()
    var tempTerraApp: ITerraApp?
    
    var isTerraLoaded: Bool {
        return tempTerraApp != nil
    }
    
    func getTerraApp() -> ITerraApp {
        guard !isTerraLoaded else {
            return tempTerraApp!
        }
        let semaphore = DispatchSemaphore(value: 0)
        loadTerra { (isSuccess) in
            semaphore.signal()
        }
        _ = semaphore.wait(timeout: .distantFuture)
        return tempTerraApp!
    }

    func loadTerra(completion: @escaping ((Bool) -> Void)) {
        TerraApp.configure(appName: "superappdemo") { (isSuccess, terraApp) in
            print("Terra-Example init: \(isSuccess)")
            TerraInstanceCenter.shared.tempTerraApp = terraApp
            completion(isSuccess)

        }

    }

}
