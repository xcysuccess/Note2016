//
//  MyViewController.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 8/3/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import UIKit
class MyViewController: UIViewController {
    let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        let action = #selector(MyViewController.tappedButton(_:))
        myButton.addTarget(self, action: action, forControlEvents: .TouchUpInside)
        
        
        let string: NSString = "Hello, Cocoa!"
        let selector = #selector(NSString.lowercaseStringWithLocale(_:))
        let locale = NSLocale.currentLocale()
        if let result = string.performSelector(selector, withObject: locale) {
            print(result.takeUnretainedValue())
        }
        
        testArray();
  
    }
    
    func testArray() -> Void {
        let array: NSArray = ["delta", "alpha", "zulu"]
        
        // Not a compile-time error because NSDictionary has this selector.
        let selector = #selector(NSDictionary.allKeysForObject(_:))
        
        if array.respondsToSelector(selector){
            array.performSelector(selector)
        }
        // Raises an exception because NSArray does not respond to this selector.
        let myPersonClass: AnyClass? = NSClassFromString("MyGreatApp.Person")
        
        
    }
    func tappedButton(sender: UIButton!) {
        print("tapped button")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
