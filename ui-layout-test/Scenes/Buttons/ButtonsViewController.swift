import UIKit

class ButtonsViewController: UIViewController
{
    @IBOutlet private var topLayoutContraint: NSLayoutConstraint!
    @IBOutlet private var bottomLayoutConstraint: NSLayoutConstraint!

    @IBAction private func handleCloseTap(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        topLayoutContraint.constant = Constants.topMargin
        bottomLayoutConstraint.constant = Constants.bottomMargin
    }
}
