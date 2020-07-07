//
//  File.swift
//  
//
//  Created by Ashlee on 07/07/2020.
//

//First iteration, define the pattern operator
//keypath, object the referes to two different type via generic angle brackets
//first type getting FROM, the second type is the return
//public func ~= (
//    pattern: KeyPath<Character,Bool>,
//    value: Character
//) -> Bool {
//    // 1. false
//    // 2. value[keyPath:pattern]
//}


//step 2 refactoring 1, change pattern Type to generic type.
public func ~= <Value> (
    pattern: KeyPath<Value, Bool>,
    value: Value
    ) -> Bool {
    value[keyPath:pattern]
}

//step 3 refactoring 2, convert to closure since support for swift 5.2, Slime version
//demonstrating that now a closure can take a keypath root and return a keyPath express the keytypes type on the 'bottom' (the 2nd type)
public func ~= <Value> (
    pattern: (Value) -> Bool,
    value: Value
    ) -> Bool {
    pattern(value)
}

