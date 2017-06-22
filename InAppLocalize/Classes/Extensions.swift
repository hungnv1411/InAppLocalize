//
//  Extensions.swift
//  fotoapps
//
//  Created by Nguyen Hung on 06/21/17.
//  Copyright © 2017 FotoApps. All rights reserved.
//

import Foundation

extension UIView {
    func onUpdateLocalize() {
        for subView: UIView in self.subviews {
            subView.onUpdateLocalize()
        }
    }
}
