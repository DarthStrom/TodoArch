import XCTest

struct MainPageObject {

    let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    var nameField: XCUIElement {
        return app.textFields["nameField"]
    }

    var getStartedButton: XCUIElement {
        return app.buttons["getStartedButton"]
    }

    var greetingLabel: XCUIElement {
        return app.staticTexts["greetingLabel"]
    }
}
