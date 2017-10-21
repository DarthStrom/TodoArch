import Quick
import Nimble

@testable import TodoArch

class ViewControllerTests: QuickSpec {
    override func spec() {

        describe("ViewController") {

            var subject: ViewController!

            beforeEach {
                subject = createViewController("ViewController", fromStoryboard: "Main") as ViewController
            }

            it("runs") {
                expect(subject).to(beAKindOf(ViewController.self))
            }
        }
    }
}
