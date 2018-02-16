import UIKit

class ChangeValueViewController: UIViewController {

    @IBOutlet weak var valueSlider: UISlider!

    var value: Int!

    var changedValue: ((Int) -> Void)!

    override func viewDidLoad() {
        super.viewDidLoad()

        valueSlider.value = Float(value)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if isMovingFromParentViewController {
            let value = Int(valueSlider.value)
            changedValue(value)
        }
    }

    func setup(value: Int) {
        self.value = value
    }
}
