/// A place to operate the calculator screen.

import XCTest

final class CalculatorScreen {

    private let calculatorPage = CalculatorPage()

    func tapOnKeyboard(button: KeyboardButtons) {
        calculatorPage.buttonsWithValue[button.rawValue].tap()
    }

    func displayInputValue() -> String {
        return calculatorPage.inputValueText.label
    }

    func displayResultValue() -> String {
        return calculatorPage.resultValueText.label
    }
}
