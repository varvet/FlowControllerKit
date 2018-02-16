import UIKit

class ValueViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!

    var changingValue: ((Int) -> Void)!
    var presentModal: (() -> Void)!

    @IBAction func changeValue() {
        guard
            let valueText = valueLabel.text,
            let value = Int(valueText)
            else { return }

        changingValue(value)
    }

    @IBAction func showModal() {
        presentModal()
    }

    func setup(value: Int) {
        valueLabel.text = "\(value)"
    }
}
