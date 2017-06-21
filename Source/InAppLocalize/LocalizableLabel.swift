//
//  LocalizableLabel.swift
//  fotoapps
//
//  Created by Nguyen Hung on 06/21/17.
//  Copyright © 2017 FotoApps. All rights reserved.
//

import UIKit

open class LocalizableLabel: UILabel {
    
    private var localizeKey: String?
    override open var text:String?  {
        set (newValue) {
            self.localizeKey = newValue
            if let key = newValue {
                let localizedString = LocalizationHelper.shared.localized(key)
                super.text = localizedString
            } else {
                super.text = newValue
            }
        }
        get {
            return super.text
        }
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        self.localizeKey = self.text
        self.text = self.localizeKey
    }
    
    override func onUpdateLocalize() {
        super.onUpdateLocalize()
        self.text = self.localizeKey
    }

}
