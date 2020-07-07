//
//  File.swift
//  
//
//  Created by Ashlee on 07/07/2020.
//

import XCTest
import MyLibrary

final class FloatingPointTestCase: XCTestCase {
    func testIsInterger() {
        XCTAssert(1.0.isInteger)
        let floatingPoint: CGFloat = 0.8
        XCTAssertFalse(floatingPoint.isInteger)
    }
}
