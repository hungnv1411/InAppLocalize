//
//  LocalizableTextField.swift
//  fotoapps
//
//  Created by Nguyen Hung on 06/21/17.
//  Copyright © 2017 FotoApps. All rights reserved.
//

import UIKit

open class LocalizableTextField: UITextField {

    private var localizeKey: String?
    
    override open var placeholder:String?  {
        set (newValue) {
            self.localizeKey = newValue
            if let key = newValue {
                let localizedString = LocalizationHelper.shared.localized(key)
                super.placeholder = localizedString
            } else {
                super.placeholder = newValue
            }
        }
        get {
            return super.placeholder
        }
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        self.localizeKey = self.placeholder
        self.placeholder = self.localizeKey
    }
    
    override func onUpdateLocalize() {
        super.onUpdateLocalize()
        self.placeholder = self.localizeKey
    }

}
