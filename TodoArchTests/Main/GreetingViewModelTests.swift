import Quick
import Nimble

@testable import TodoArch

class GreetingViewModelTests: QuickSpec {
    override func spec() {

        describe("GreetingViewModel") {

            var subject: GreetingViewModel!

            beforeEach {
                subject = GreetingViewModel()
                subject.name = UITextField()
                subject.greeting = UILabel()
            }

            describe("get started tapped") {

                beforeEach {
                    subject.name.text = "tester"
                    
                    subject.getStartedTapped()
                }

                it("updates the greeting") {
                    expect(subject.greeting.text).to(equal("Hi, tester!"))
                }
            }
        }
    }
}
