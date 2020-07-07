//
//  File.swift
//
//
//  Created by Ashlee on 07/07/2020.
//

import XCTest
import MyLibrary

final class BoolInitTestCase: XCTestCase {
  func test_validBits() throws {
    let boolFromTrueBit = try XCTUnwrap (Bool(bit: 1) )
    XCTAssertTrue(boolFromTrueBit)

    let boolFromFalseBit = try XCTUnwrap( Bool(bit: 0) )
    XCTAssertFalse(boolFromFalseBit)
  }

  func test_invalidBits() {
    XCTAssertNil( Bool(bit: -1) )
    XCTAssertNil( Bool(bit: 2) )
  }
    
  func testData() throws {
    let data = Data(0...2)
    let falseByte = data[0]
    let trueByte = data[1]
    let invalidByte = data[2]
    
    let boolFromFalseBit = try XCTUnwrap( Bool(bit: falseByte) )
    XCTAssertFalse(boolFromFalseBit)
    
    let boolFromTrueBit = try XCTUnwrap (Bool(bit: trueByte) )
    XCTAssertTrue(boolFromTrueBit)

    let boolFromNilBit = Bool(bit: invalidByte)
    
    XCTAssertNil(boolFromNilBit)
  }
}
