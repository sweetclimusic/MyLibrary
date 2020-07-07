//
//  Sequence.swift
//  
//
//  Created by Ashlee on 07/07/2020.
//  Extention to allow a first for all sequence

public extension Sequence {
    var first: Element? {
        first { _ in true }
    }
}

public extension Sequence where Element: AdditiveArithmetic {
    var sum: Element? {
        guard let first = first else {
            return nil
        }
        //only add to the elements after the first
        return dropFirst().reduce ( first, + )
    }
}
