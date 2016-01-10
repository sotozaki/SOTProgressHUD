# SOTProgressHUD

[![Build Status](https://travis-ci.org/sotozaraki/SOTProgressHUD.svg?branch=master)](https://travis-ci.org/sotozaraki/SOTProgressHUD)


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

sotozakimasanori, sotozakimasanori@gmail.com


## License

SOTProgressHUD is available under the MIT license. See the LICENSE file for more info.
