import XCTest

final class Calculator_UITest: BaseSetupTest{
    
    private let calculatorScreen = CalculatorScreen()

    func testVerifyIfAllNumbersAreDisplayedCorrectly()  {


        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.zero)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.one)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.two)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.three)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.four)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.five)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.six)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.seven)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.eight)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.nine)
        
        XCTAssertEqual(calculatorScreen.displayInputValue(), "0123456789")
        XCTAssertEqual(calculatorScreen.displayResultValue(), "0.0")
    }
    
    func testVerifyIfAllMathSymbolsAreNotDisplayed() {
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.divide)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "")
        
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.multiply)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "")
        
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.subtract)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "")
        
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.add)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "")
        
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.equal)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "")
        
    }
    
    func testAddTwoValues() {
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.five)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.add)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.seven)
        
        XCTAssertEqual(calculatorScreen.displayResultValue(), "12.0")
    }
    
    func testSubstractTwoValues() {
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.three)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.zero)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.subtract)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.nine)
        
        XCTAssertEqual(calculatorScreen.displayResultValue(), "21.0")
    }
    
    func testMultiplyTwoValues() {
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.zero)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.multiply)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.seven)
        
        XCTAssertEqual(calculatorScreen.displayResultValue(), "0.0")
    }
    
    func testDivideTwoValues() {
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.nine)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.one)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.divide)
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.four)
        
        XCTAssertEqual(calculatorScreen.displayResultValue(), "22.8")
    }
    
    func testVerifyIfDotIsDisplayedOnlyOnce() {
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.dot)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "0.")
        
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.two)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "0.2")
        
        calculatorScreen.tapOnKeyboard(button: KeyboardButtons.dot)
        XCTAssertEqual(calculatorScreen.displayInputValue(), "0.2")
    }
}
