# AlertHomework

Objective-C method is using direct function callback, where we pass view controller as delegate. Meanwhile Swift uses Delegate implementation, where alertUtility is set on instance of a class that calls the alert.

Whenever we pick a value from our alert pop-up, it tries to call a function named alertControllerButtonSelected:andIndex: in Objective-C. While in Swift there is a protocol, according to which func alertValueSelected(withTitle: String, andIndex: NSNumber) must be called.

For future impementation of 3rd party libraries, a Swift NSObject with bridging header was created. We already pass the values of title, message and buttons to it, so we could simply link the external library inside that object and pass values to ther library from within SwiftyAlertUtility.
