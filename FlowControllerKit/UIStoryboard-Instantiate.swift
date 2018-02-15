import UIKit

extension UIStoryboard {

    /// This is a convenience method that calls the method instantiateViewController(withIdentifier:)
    /// and derives its identifier from the class name and returns the correct type so no type casting
    /// is nececery.
    ///
    /// The storyboard ID needs to be set to the class name for this to works if not this will throw an exeption.
    ///
    /// - Parameter type: The ViewController type ypu want to inistantiate
    /// - Returns: An instantiated instance of the ViewController
    public func instantiate<ViewController: UIViewController>(_ type: ViewController.Type) -> ViewController {
        let viewController = type.init()
        let identifier = String(describing: Swift.type(of: viewController))
        return instantiateViewController(withIdentifier: identifier) as! ViewController
    }
}
