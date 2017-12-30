import UIKit

class MainViewController: UIViewController {
    @IBOutlet var tasks: UITableView!

    var viewLogic: TaskListViewLogic!

    override func viewDidLoad() {
        viewLogic = TaskListViewLogic()
    }
}

extension MainViewController: UITableViewDelegate {}

extension MainViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewLogic.tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = viewLogic.tasks[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell") as! TaskTableViewCell
        cell.model = TaskTableViewCell.Model(task: task)

        return cell
    }
}
