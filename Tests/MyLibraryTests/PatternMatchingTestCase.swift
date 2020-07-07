//
//  PatternMatchingTestCase.swift
//  
//
//  Created by Ashlee on 07/07/2020.
//

import XCTest
import MyLibrary

final class PatternMatchingTestCase: XCTestCase {
    //'Slime' iteration, first attempt we just return false to ensure that the pattern match isn't Number/HexDigit
//    func testCharacter() {
//        let g: Character = "g"
//        switch g {
//        case \.isNumber, \.isHexDigit:
//            XCTFail()
//        default:
//            XCTFail()
//        }
//    }

    func testCharacter() {
        let g: Character = "g"
        switch g {
        case \.isNumber, \.isHexDigit:
            XCTFail()
        case \.isLetter:
            break
        default:
            XCTFail()
        }
    }
    func testDouble() {
        switch 1.0 {
        case \.isZero,
             [2,4,0.4].contains,
             { $0 != 1 }:
            XCTFail()
        case \.isInteger:
            break
        default:
            XCTFail()
        }
    }
}
