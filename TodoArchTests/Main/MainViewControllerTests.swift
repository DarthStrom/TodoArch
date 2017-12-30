import Quick
import Nimble

@testable import TodoArch

class MainViewControllerTests: QuickSpec {
    override func spec() {

        describe("viewDidLoad") {

            var subject: MainViewController!

            beforeEach {
                subject = createViewController("MainViewController", fromStoryboard: "Main") as MainViewController
            }

            describe("table view data source") {

                beforeEach {
                    subject.viewLogic.tasks = [
                        Task(name: "first", project: "1"),
                        Task(name: "second", project: "2")
                    ]
                }

                describe("numberOfRowsInSection") {

                    it("returns the count from the view logic") {
                        expect(subject.tableView(subject.tasks, numberOfRowsInSection: 0)).to(equal(2))
                    }
                }

                describe("cellForRowAt") {

                    it("returns a populated cell") {
                        let cell1 = subject.tableView(subject.tasks, cellForRowAt: IndexPath(row: 0, section: 0)) as? TaskTableViewCell
                        let cell2 = subject.tableView(subject.tasks, cellForRowAt: IndexPath(row: 1, section: 0)) as? TaskTableViewCell
                        expect(cell1?.model).to(equal(TaskTableViewCell.Model(task: subject.viewLogic.tasks[0])))
                        expect(cell2?.model).to(equal(TaskTableViewCell.Model(task: subject.viewLogic.tasks[1])))

                    }
                }
            }
        }
    }
}
