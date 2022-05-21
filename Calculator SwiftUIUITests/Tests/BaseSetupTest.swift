/// Setup for UI Tests.

import XCTest

class BaseSetupTest: XCTestCase {

    override func setUp() {
            super.setUp()

        continueAfterFailure = false // Stops the test when it detects a failure.

        XCUIApplication().launch()
    }
}
