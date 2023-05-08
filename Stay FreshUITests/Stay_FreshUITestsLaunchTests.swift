

import XCTest

final class Stay_FreshUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        
        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    func testLoginScreenTitle() throws {
        let app = XCUIApplication()
        app.launch()

        // Проверка наличия элемента с идентификатором "LoginTitle"
        let loginTitle = app.staticTexts["LoginTitle"]
        XCTAssertTrue(loginTitle.exists, "Login screen title is missing.")
    }
}


