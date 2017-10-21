import Quick
import Nimble

@testable import TodoArch

class MainViewControllerTests: QuickSpec {
    override func spec() {

        describe("MainViewController") {

            var subject: MainViewController!

            beforeEach {
                subject = createViewController("MainViewController", fromStoryboard: "Main") as MainViewController
            }

            it("runs") {
                expect(subject).to(beAKindOf(MainViewController.self))
            }
        }
    }
}
