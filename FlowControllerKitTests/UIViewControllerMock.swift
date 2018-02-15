import UIKit

class UIViewControllerMock: UIViewController {
    var didPushedViewController: UIViewController? = nil
    var didPresentedViewController: UIViewController? = nil
    var didDismiss: Bool = false

    override func show(_ vc: UIViewController, sender: Any?) {
        didPushedViewController = vc
    }

    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        didPresentedViewController = viewControllerToPresent
    }

    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        didDismiss = true
    }
}
