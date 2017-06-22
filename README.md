[![Platform](https://img.shields.io/cocoapods/p/InAppLocalize.svg?maxAge=2592000)](http://cocoapods.org/?q=InAppLocalize)
[![Version](http://img.shields.io/cocoapods/v/InAppLocalize.svg)](http://cocoapods.org/?q=InAppLocalize)

# InAppLocalize
InAppLocalize is a simple framework that improves localization in Swift iOS apps - providing cleaner syntax and in-app language switching.

## Features

- Allow user to change the app's language without changing device's language
- Set localize by adding key directly to xib or storyboard
- Not need to declare IBOutlet

## Usage

Install
```
pod 'InAppLocalize'
```

To add supported languages
```swift
LocalizationHelper.shared.addSupportedLanguage(["en", "fr"])
```

To set current language
```swift
LocalizationHelper.shared.setCurrentLanguage("en")
```
