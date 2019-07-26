import XCTest
@testable import swift_epeg

final class swift_epegTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_epeg().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
