import UIKit

class ModalViewController: UIViewController {

    var dismissing: (() -> Void)!

    @IBAction func dismiss() {
        dismissing()
    }
}
