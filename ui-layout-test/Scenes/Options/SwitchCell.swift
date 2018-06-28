import UIKit

final class SwitchCell: UITableViewCell {

    @IBOutlet private var toggle: UISwitch!
    @IBOutlet private var label: UILabel!

    var isOn: Bool {
        set {
            toggle.setOn(newValue, animated: true)
        }
        get {
            return toggle.isOn
        }
    }

    func configure(labelText: String)
    {
        toggle.onTintColor = UIColor.WorldRemit.azure
        label.text = labelText
    }
}
