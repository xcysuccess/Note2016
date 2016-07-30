//
//  Person.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import Foundation

class Person: NSObject {
    var name : String
    var age : Int
    
    // 重写了NSObject(父类)的构造方法
    override init() {
        name = "testname"
        age = 0
    }
    
    func printName() -> Void {
        print("\(name)")
    }
}