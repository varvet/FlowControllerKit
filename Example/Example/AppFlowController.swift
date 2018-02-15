import UIKit
import FlowControllerKit

class AppFlowController {

    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    var valueVC: ValueViewController!
    var navigationController: UINavigationController

    init(window: UIWindow) {
        valueVC = storyboard.instantiate(ValueViewController.self)
        navigationController = UINavigationController(rootViewController: valueVC)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    func start() {
        let changeValueVC = storyboard.instantiate(ChangeValueViewController.self)
        let modalVC = storyboard.instantiate(ModalViewController.self)

        valueVC.changingValue = valueVC.showing(changeValueVC, preparation: changeValueVC.setup(value:))
        valueVC.presentModal = valueVC.presenting(modalVC)

        changeValueVC.changedValue = valueVC.setup(value:)

        modalVC.dismissing = modalVC.dismissing()
    }
}
