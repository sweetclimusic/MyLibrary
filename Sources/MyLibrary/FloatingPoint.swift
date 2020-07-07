//
//  FloatingPoint.swift
//
//
//  Created by Ashlee on 07/07/2020.
//

public extension FloatingPoint {
  var isInteger: Bool { rounded() == self }
}
