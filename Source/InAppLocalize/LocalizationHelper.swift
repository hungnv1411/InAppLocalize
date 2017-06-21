//
//  LocalizationHelper.swift
//  fotoapps
//
//  Created by Nguyen Hung on 06/21/17.
//  Copyright © 2017 FotoApps. All rights reserved.
//

import Foundation

open class LocalizationHelper {
    
//    static let OnCurrentLanguageChanged = Notification.Name("OnCurrentLanguageChanged")
    
    fileprivate var bundles = [String: Bundle]()
    fileprivate var currentLanguage = "en"
    
    init() {
        
    }
    
    open static let shared = LocalizationHelper()
    
    open func addSupportedLanguage(_ lang: String) {
        if let bundlePath = Bundle.main.path(forResource: lang, ofType: "lproj") {
            if let bundle = Bundle(path: bundlePath) {
                bundles[lang] = bundle
            }
        }
    }
    
    open func addSupportedLanguage(_ langs: [String]) {
        for lang in langs {
            addSupportedLanguage(lang)
        }
    }
    
    open func setCurrentLanguage(_ lang: String) {
        if (currentLanguage.compare(lang) != .orderedSame) {
            currentLanguage = lang
//            NotificationCenter.default.post(Notification(name: LocalizationHelper.OnCurrentLanguageChanged))
        }
    }
    
    open func localized(_ key: String) -> String {
        if let bundle = bundles[currentLanguage] {
            return NSLocalizedString(key, tableName: nil, bundle: bundle, value: key, comment: key)
        }
        return key
    }
}
