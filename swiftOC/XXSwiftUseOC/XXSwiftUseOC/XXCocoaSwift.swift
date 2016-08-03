//
//  XXCocoaSwift.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 8/3/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import Foundation

@objc public enum CustomError: Int, ErrorType {
    case A, B, C
}

class XXCocoaSwift: NSObject {

    let myString: NSString = "123"
    override init() {
        super.init()
        self.testNSString()
    }
    
    func testNSString() -> Void {
        if let integerValue = Int(myString as String) {
            print("\(myString) is the integer \(integerValue)")
        }
    }
}
