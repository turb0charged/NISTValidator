# NISTValidator
> Password validator for iOS following NIST guidelines.

[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/LFAlertController.svg)  
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

## Requirements

-iOS 10+
-Xcode 10.1

##Instalation 

###CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `YourLibrary` by adding it to your `Podfile`:

```ruby 
platform: ios, '10.0'
use_frameworks!
pod 'NISTValidator', :path => '/Users/turb0/Documents/JobSearch/TheInfatuation/NISTValidator/repo/NISTValidator'
```

## Usage Example

```swift
if NISTValidator.validate(password: password, useCustomList: false) {
            print("password validated")
        } else {
            print("password failed validation")
        }
```

You may use a customized password exemption list for passwords that will pass NIST requirments by simply creating a newline delimited file named [CommonPasswordList.txt]. Include it in your project and pass true to the useCustomList argument. 


[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE

