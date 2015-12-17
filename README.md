# GradientView

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

`GradientView ` is a simple `UIView` subclass uses a `CAGradientLayer` as its root layer class. It then exposes all of the properties of the gradient layer and swiftifies them for type safety and convenience.

## Requirements

- iOS 8.0+
- tvOS 9.0+
- Xcode 7+

## Installation using CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

Because `GradientView` is written in Swift, you must use frameworks.

To integrate `GradientView ` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'GradientLayerView'
```

Then, run the following command:

```bash
$ pod install
```

## Installation using Carthage

Add this to your `Cartfile`:

```
github "nuudles/GradientView"
```

## Usage

Simply add an `GradientView` into your view hierarchy. You can then configure it like you would a `CAGradientLayer` as described in [Apple's documentation](https://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CAGradientLayer_class/).


```swift
let gradientView = GradientView()
gradientView.colors = [.whiteColor(), .blackColor()]
view.addSubview(gradientView)
```