//
//  ViewController.swift
//  Example
//
//  Created by Nguyen Hung on 6/21/17.
//  Copyright © 2017 Nguyen Hung. All rights reserved.
//

import UIKit
import InAppLocalize

class ViewController: LocalizableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LocalizationHelper.shared.addSupportedLanguage(["en", "fr"])
        onUpdateLocalize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChangeLanguageButtonClicked(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Language", message: "Change language", preferredStyle: .actionSheet)
        weak var pSelf = self
        actionSheet.addAction(UIAlertAction(title: "en", style: .default, handler: { (_) in
            LocalizationHelper.shared.setCurrentLanguage("en")
            pSelf?.onUpdateLocalize()
        }))
        actionSheet.addAction(UIAlertAction(title: "fr", style: .default, handler: { (_) in
            LocalizationHelper.shared.setCurrentLanguage("fr")
            pSelf?.onUpdateLocalize()
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (_) in
            
        }))
        present(actionSheet, animated: true, completion: nil)
    }
}

