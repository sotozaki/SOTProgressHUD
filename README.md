# SOTProgressHUD

[![Build Status](https://travis-ci.org/sotozaraki/SOTProgressHUD.svg?branch=master)](https://travis-ci.org/sotozaraki/SOTProgressHUD)
![Pod Version](https://img.shields.io/cocoapods/v/SOTProgressHUD.svg?style=flat)
![Pod License](https://img.shields.io/cocoapods/l/SOTProgressHUD.svg?style=flat)
![Pod Platform](https://img.shields.io/cocoapods/p/SOTProgressHUD.svg?style=flat)

SOTProgressHUD is a lightweight progress HUD for iOS app in Swift2.0.

<img src="http://wst.xsrv.jp/SOTProgressHUD/SOTProgressHUD.gif" width=250.0>

## DEMO

```ruby
pod try SOTProgressHUD
```

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
import SOTProgressHUD
```
```swift
SOTProgressHUD.sharedHUD.show(self.view)
SOTProgressHUD.sharedHUD.dismissSuccessWithDelay(self.view, delay: 1.0)
SOTProgressHUD.sharedHUD.dismissErrorWithDelay(self.view, delay: 1.0)
SOTProgressHUD.sharedHUD.dismiss()
```

## Requirements
* iOS 8.0
* Xcode 7.2
* Swift 2.0  

## Installation

SOTProgressHUD is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SOTProgressHUD"
```

## Author

sotozakimasanori


## License

SOTProgressHUD is available under the MIT license. See the LICENSE file for more info.
