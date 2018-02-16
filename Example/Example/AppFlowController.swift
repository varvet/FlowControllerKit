import UIKit
import FlowControllerKit

class AppFlowController {

    private let storyboard = UIStoryboard(name: "Main", bundle: nil)

    private let valueViewController: ValueViewController
    private let navigationController: UINavigationController

    init(window: UIWindow) {
        valueViewController = storyboard.instantiate(ValueViewController.self)
        navigationController = UINavigationController(rootViewController: valueViewController)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    func start() {
        let changeValueViewController = storyboard.instantiate(ChangeValueViewController.self)
        let modalViewController = storyboard.instantiate(ModalViewController.self)

        valueViewController.changingValue = valueViewController.showing(changeValueViewController, preparation: changeValueViewController.setup(value:))
        valueViewController.presentModal = valueViewController.presenting(modalViewController)

        changeValueViewController.changedValue = valueViewController.setup(value:)

        modalViewController.dismissing = modalViewController.dismissing()
    }
}
