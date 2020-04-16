//
//  URLSchemeHelper.swift
//  mapAppButtonSample
//
//  Created by satoshi.marumoto on 2020/04/16.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

struct URLSchemeHelper {
    
    /// マップアプリを起動する
    static func map(address: String?) {
        guard let address = address else {
            print("address is nil.")
            return
        }
        if address.isEmpty {
            print("address is empty.")
            return
        }
        var charSet = CharacterSet.alphanumerics
        charSet.insert(charactersIn: "-._~")
        guard let encodedAddr = address.addingPercentEncoding(withAllowedCharacters: charSet) else {
            print("URL encoding failed.")
            return
        }
        
        guard let mapURL = URL(string: "https://maps.apple.com/?q=\(encodedAddr)") else {
            print("mapURL is nil.")
            return
        }
        
        if UIApplication.shared.canOpenURL(mapURL) {
            print("mapURL: \(mapURL)")
            UIApplication.shared.open(mapURL, options: [:], completionHandler: nil)
        }
    }
}

