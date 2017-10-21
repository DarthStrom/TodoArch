import XCTest

class MainUITests: XCTestCase {

    let app = XCUIApplication()
    var mainPage: MainPageObject!
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        app.launch()

        mainPage = MainPageObject(app: app)
    }

    func testGreeting() {
        mainPage.nameField.tap()
        mainPage.nameField.typeText("UITester")
        mainPage.getStartedButton.tap()

        XCTAssertEqual(mainPage.greetingLabel.label, "Hi, UITester!")
    }
}
