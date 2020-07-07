//
//  SequenceTestCase.swift
//  
//
//  Created by Ashlee on 07/07/2020.
//

import Foundation
import MyLibrary
import XCTest

class SequenceTestCase: XCTestCase {
    func testFirst(){
        let odds = stride(from: 1, through: 9, by: 2)
        //stride aren't comparable sp we cast to array which are
        //XCTAssertEqual(Array(odds), [1,3,5,7,9])
        //refactoring the test to test the first only
        XCTAssertEqual(1, odds.first)
        XCTAssertNil(odds.prefix(0).first)
        
    }
    //test the sum from reducing a sequence
    func testSum() throws {
        let threeTwoOne = stride(from: 3, through: 1, by: -1)
        XCTAssertEqual(threeTwoOne.sum, 6)
        XCTAssertEqual([0.5, 1, 1.5].sum, 3)
        XCTAssertNil(Set<CGFloat>().sum)
        
        let oneThird = 1.0 / 3
        let thirdSum = Array(repeating: oneThird, count: 300).sum
        //test for percission using AssertEqual accuracy,
        // Must unwrap for XCTAssert, using throw to prevent data loss
        //power to a tril
        XCTAssertEqual(
            try XCTUnwrap(thirdSum), 100, accuracy: pow(0.1, 12) )
        
    }
}
