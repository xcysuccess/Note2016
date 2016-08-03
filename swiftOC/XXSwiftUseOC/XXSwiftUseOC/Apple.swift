//
//  Apple.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import Foundation

@objc(Color)
enum AppColor: Int {
    @objc(Red)
    case KRedColor
    
    @objc(Black)
    case KBlackColor
}

@objc(GameSwfitItem)
class Apple:NSObject{
    @objc(color)
    var appColor: AppColor = .KRedColor
    
    @objc(swiftName)
    var name: String
    
    @objc(initSwift:)
    init(name:String){
        self.name = name
    }
}