import XCTest

import reactive_streams_swiftTests

var tests = [XCTestCaseEntry]()
tests += reactive_streams_swiftTests.allTests()
XCTMain(tests)