//
//  TestableAppSwiftUITests.swift
//  TestableAppSwiftUI
//
//  Created by Dmytro Mazalov on 21.09.2025.
//

import XCTest
@testable import TestableAppSwiftUI

final class TestableAppSwiftUITests: XCTestCase {
    func testUserModelInitialization() throws {
        let user = UserModel(name: "Alice", age: 25, subscribed: true)
        XCTAssertEqual(user.name, "Alice")
        XCTAssertEqual(user.age, 25)
        XCTAssertTrue(user.subscribed)
    }
}
