import XCTest
@testable import SplashKit

final class SplashKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SplashKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
