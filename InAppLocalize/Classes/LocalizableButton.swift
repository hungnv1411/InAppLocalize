//
//  LocalizableButton.swift
//  fotoapps
//
//  Created by Nguyen Hung on 06/21/17.
//  Copyright © 2017 FotoApps. All rights reserved.
//

import UIKit

open class LocalizableButton: UIButton {
    
    private var localizeKey: String?
    
    override open func setTitle(_ title: String?, for state: UIControlState) {
        if let key = title {
            self.localizeKey = key
            let localizedString = LocalizationHelper.shared.localized(key)
            super.setTitle(localizedString, for: state)
        } else {
            super.setTitle(title, for: state)
        }
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        self.localizeKey = self.currentTitle
        self.setTitle(self.localizeKey, for: .normal)
    }

    override func onUpdateLocalize() {
        super.onUpdateLocalize()
        self.setTitle(self.localizeKey, for: .normal)
    }
    
}
