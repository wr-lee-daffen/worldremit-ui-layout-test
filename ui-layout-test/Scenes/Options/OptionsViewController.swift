import UIKit

final class OptionsViewController: UIViewController
{
    @IBOutlet private var tableView: UITableView!

    private let rowCount: Int = 3
    private var lastRow: Int { return rowCount - 1 }

    override func viewDidLoad() {
        super.viewDidLoad()

        let insets = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }

    private func present()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let buttonsController: ButtonsViewController = storyboard.instantiateViewController(withIdentifier: "ButtonsViewController") as? ButtonsViewController else {
            fatalError("Cannot instantiate ButtonsViewController")
        }

        let navBar: Bool = (tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? SwitchCell)?.isOn ?? false
        let tabBar: Bool = (tableView.cellForRow(at: IndexPath(row: 1, section: 0)) as? SwitchCell)?.isOn ?? false

        var controller: UIViewController = buttonsController
        if navBar
        {
            buttonsController.navigationItem.title = "Buttons"
            controller = UINavigationController(rootViewController: buttonsController)
        }

        if tabBar
        {
            let tabController = UITabBarController()
            tabController.viewControllers = [controller]
            present(tabController, animated: true, completion: nil)
        }
        else
        {
            present(controller, animated: true, completion: nil)
        }
    }
}

extension OptionsViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return rowCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "switchcell") as? SwitchCell else {
                fatalError("Failed to dequeue cell with identifier: \"switchcell\"")
            }
            cell.configure(labelText: "Navigation bar")
            return cell

        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "switchcell") as? SwitchCell else {
                fatalError("Failed to dequeue cell with identifier: \"switchcell\"")
            }
            cell.configure(labelText: "Tab Bar")
            return cell

        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "presentcell") else {
                fatalError("Failed to dequeue cell with identifier: \"presentcell\"")
            }
            return cell
        }
    }
}

extension OptionsViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)

        switch indexPath.row
        {
        case 0, 1:
            guard let cell = tableView.cellForRow(at: indexPath) as? SwitchCell else {
                fatalError("Unexpected type")
            }
            cell.isOn = !cell.isOn

        default:
            present()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
