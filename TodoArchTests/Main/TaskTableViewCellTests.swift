import Quick
import Nimble

@testable import TodoArch

class TaskTableViewCellTests: QuickSpec {
    override func spec() {

        var subject: TaskTableViewCell!
        let task = UILabel()
        let project = UILabel()

        beforeEach {
            subject = TaskTableViewCell()
            subject.task = task
            subject.project = project
        }

        context("model changed") {

            beforeEach {
                let task = Task(name: "hi", project: "there")

                subject.model = TaskTableViewCell.Model(task: task)
            }

            it("updates labels") {
                expect(subject.task.text).to(equal("hi"))
                expect(subject.project.text).to(equal("there"))
            }
        }
    }
}
