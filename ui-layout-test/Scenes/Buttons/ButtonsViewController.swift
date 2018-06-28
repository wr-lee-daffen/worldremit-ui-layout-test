import UIKit

class ButtonsViewController: UIViewController
{
    @IBOutlet private var bottomLayoutConstraint: NSLayoutConstraint!

    @IBAction private func handleCloseTap(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad()
    {
        bottomLayoutConstraint.constant = 24
    }
}
