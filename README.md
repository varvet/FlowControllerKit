# FlowControllerKit

[![Build Status](https://travis-ci.org/varvet/FlowControllerKit.svg?branch=master)](https://travis-ci.org/varvet/FlowControllerKit)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)s

A collection of helpers to make cleaner Flow Controller classes.

If you have ever been bothered by the tight data and navigation coupling of UIViewControllers when using storyboard and segues the Flow Controller pattern could be something worth looking in to.

Flow Controller (aka Flow Coordinators) is when you centralize the navigation and data injection to another class. It makes sure that the correct view controller is shown with the correct data.

## Installation

### Carthage

Make the following entry in your Cartfile:

```
github "varvet/FlowControllerKit"
```

Then run `carthage update`.

## Usage

The main part of FlowControllerKit are the helper methods for showing, presenting, and dismissing view controllers.

```swift
// Without FlowControllerKit
valueVC.changingValue = { value in
    changeValueVC.setup(value: value)
    valueVC.show(changeValueVC, sender: nil)
}

// With FlowControllerKit
valueVC.changingValue = valueVC.showing(changeValueVC, preparation: changeValueVC.setup(value:))
```

There is also a new generic initialization method for UIViewControllers within storyboards.

```swift
// Without FlowControllerKit
valueVC = storyboard.instantiateViewController(withIdentifier: "ValueViewController") as! ValueViewController

// With FlowControllerKit
valueVC = storyboard.instantiate(ValueViewController.self)
```

### Example project

There is an [example project][example] of how this can be used.

[example]: https://github.com/varvet/FlowControllerKit/tree/feature/travis-ci/Example