//
//  Apple.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import Foundation

@objc(Color)
enum Цвет: Int {
    @objc(Red)
    case Красный
    
    @objc(Black)
    case Черный
}

@objc(GameSwfitItem)
class Apple:NSObject{
    @objc(color)
    var цвет: Цвет = .Красный
    
    @objc(swiftName)
    var name: String
    
    @objc(initSwift:)
    init(name:String){
        self.name = name
    }
}