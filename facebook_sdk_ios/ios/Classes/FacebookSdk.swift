//
//  FacebookSdk.swift
//  facebook_sdk_ios
//
//  Created by Nesrullah Ekinci on 13.12.2021.
//

import Foundation
import FBSDKCoreKit

class FacebookSdk {
    
 public func initialize(
        _ enableAutoLogAppEvents: Bool = true
    ) -> Bool {
        Settings.shared.isAutoLogAppEventsEnabled = enableAutoLogAppEvents
        return true
    }
}
