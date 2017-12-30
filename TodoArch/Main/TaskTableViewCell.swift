import UIKit

class TaskTableViewCell: UITableViewCell {
    @IBOutlet var task: UILabel!
    @IBOutlet var project: UILabel!

    var model: Model? {
        didSet {
            task.text = model?.task
            project.text = model?.project
        }
    }

    struct Model: Equatable {
        let task: String
        let project: String

        init(task: Task) {
            self.task = task.name
            self.project = task.project
        }

        static func == (lhs: Model, rhs: Model) -> Bool {
            return lhs.task == rhs.task && lhs.project == rhs.project
        }
    }
}
