import UIKit

extension UIViewController {

    /// A Wrapper method for show(sender:). It retunrns a clousre that first runs an optional
    /// preperation clousre for set up if needed and then the show(sender:) with the ViewController.
    ///
    /// - Parameters:
    ///   - viewController: The ViewController to be shown
    ///   - preparation: A clousre that runs before show(sender:) is called
    public func showing<T>(_ viewController: UIViewController, preparation: ((T) -> Void)? = nil) -> (T) -> Void {
        return { value in
            preparation?(value)
            self.show(viewController, sender: nil)
        }
    }

    /// A Wrapper method for show(sender:). It retunrns a clousre that first runs an optional
    /// preperation clousre for set up if needed and then the show(sender:) with the ViewController.
    ///
    /// - Parameters:
    ///   - viewController: The ViewController to be shown
    ///   - preparation: A clousre that runs before show(sender:) is called
    public func showing(_ viewController: UIViewController, preparation: (() -> Void)? = nil) -> () -> Void {
        return {
            preparation?()
            self.show(viewController, sender: nil)
        }
    }
    
    /// A Wrapper method for dismiss(animated:). It retunrns a clousre that first runs an optional
    /// preperation clousre for set up if needed and then the dismiss(animated:) with the ViewController.
    ///
    /// - Parameters:
    ///   - animated: <#animated description#>
    ///   - preparation: A clousre that runs before dismiss(animated:) is called
    public func dismissing<T>(animated: Bool = true, preparation: ((T) -> Void)? = nil) -> (T) -> Void {
        return { value in
            preparation?(value)
            self.dismiss(animated: animated)
        }
    }

    /// A Wrapper method for dismiss(animated:). It retunrns a clousre that first runs an optional
    /// preperation clousre for set up if needed and then the dismiss(animated:) with the ViewController.
    ///
    /// - Parameters:
    ///   - animated: <#animated description#>
    ///   - preparation: A clousre that runs before dismiss(animated:) is called
    public func dismissing(animated: Bool = true, preparation: (() -> Void)? = nil) -> () -> Void {
        return {
            preparation?()
            self.dismiss(animated: animated)
        }
    }

    /// A Wrapper method for present(animated:). It retunrns a clousre that first runs an optional
    /// preperation clousre for set up if needed and then the present(animated:) with the ViewController.
    ///
    /// - Parameters:
    ///   - viewController: The ViewController to be presented
    ///   - animated: If it should be animated
    ///   - preparation: A clousre that runs before present(animated:) is called
    public func presenting<T>(_ viewController: UIViewController, animated: Bool = true, preparation: ((T) -> Void)? = nil) -> (T) -> Void {
        return { value in
            preparation?(value)
            self.present(viewController, animated: animated)
        }
    }

    /// A Wrapper method for present(animated:). It retunrns a clousre that first runs an optional
    /// preperation clousre for set up if needed and then the present(animated:) with the ViewController.
    ///
    /// - Parameters:
    ///   - viewController: The ViewController to be presented
    ///   - animated: If it should be animated
    ///   - preparation: A clousre that runs before present(animated:) is called
    public func presenting(_ viewController: UIViewController, animated: Bool = true, preparation: (() -> Void)? = nil) -> () -> Void {
        return {
            preparation?()
            self.present(viewController, animated: animated)
        }
    }
}
