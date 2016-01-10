# SOTProgressHUD

[![CI Status](http://img.shields.io/travis/sotozakimasanori/SOTProgressHUD.svg?style=flat)](https://travis-ci.org/sotozakimasanori/SOTProgressHUD)
[![Version](https://img.shields.io/cocoapods/v/SOTProgressHUD.svg?style=flat)](http://cocoapods.org/pods/SOTProgressHUD)
[![License](https://img.shields.io/cocoapods/l/SOTProgressHUD.svg?style=flat)](http://cocoapods.org/pods/SOTProgressHUD)
[![Platform](https://img.shields.io/cocoapods/p/SOTProgressHUD.svg?style=flat)](http://cocoapods.org/pods/SOTProgressHUD)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
import SOTProgressHUD
SOTProgressHUD.sharedHUD.show(self.view)
SOTProgressHUD.sharedHUD.dismissSuccessWithDelay(self.view, delay: 1.0)
SOTProgressHUD.sharedHUD.dismissErrorWithDelay(self.view, delay: 1.0)
SOTProgressHUD.sharedHUD.dismiss()
```

## Requirements
* Xcode 7.2
* Swift 2.0  

## Installation

SOTProgressHUD is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SOTProgressHUD"
```

## Author

sotozakimasanori, sotozakimasanori@gmail.com


## License

SOTProgressHUD is available under the MIT license. See the LICENSE file for more info.
