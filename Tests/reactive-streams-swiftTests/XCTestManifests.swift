import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(reactive_streams_swiftTests.allTests),
    ]
}
#endif