//
//  ViewController.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import UIKit

extension UIBezierPath {
    convenience init(triangleSideLength: Float, origin: CGPoint) {
        self.init()
        let squareRoot = Float(sqrt(3.0))
        let altitude = (squareRoot * triangleSideLength) / 2
        moveToPoint(origin)
        addLineToPoint(CGPoint(x: CGFloat(triangleSideLength), y: origin.x))
        addLineToPoint(CGPoint(x: CGFloat(triangleSideLength) / 2, y: CGFloat(altitude)))
        closePath()
    }
}
protocol SomeProtocol {
    var mustBeSettable: Int { get set }
}

extension CGRect:SomeProtocol {
    var area: CGFloat {
        return width * height
    }
    var mustBeSettable: Int { get{ return 10} set{} }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        testID()
        
//        testExtern()
        
//        testConclusure()
//        
//        testViewController()
        
//        testc()
        
        NSLog("getIntFromCPP ::%d",getIntFromCPP());
    }

    
    func testID() -> Void {
        //####id 兼容性
        let myObject:AnyObject = NSDate()
        let mCount = myObject.dateByAddingTimeInterval(10)
        let timeSinceNow = myObject.timeIntervalSinceNow
        print("\(mCount),\(timeSinceNow)")
        
        //crash
        //myObject.characterAtIndex(5)
        let myCount = myObject.count
        let myChar = myObject.characterAtIndex?(5)
        print("\(myCount),\(myChar)")
        
        if let fifthCharacter = myObject.characterAtIndex?(5) {
            print("Found \(fifthCharacter) at index 5")
        }
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let lastRefreshDate: AnyObject? = userDefaults.objectForKey("LastRefreshDate")
        
        //crash
//        let date = lastRefreshDate as! NSDate

        if let date = lastRefreshDate as? NSDate {
            print("\(date.timeIntervalSinceReferenceDate)")
        }
        
    }
    
    func testExtern() -> Void {
        let testPath:UIBezierPath = UIBezierPath.init(triangleSideLength: 1.0, origin: CGPointMake(5, 10))
        print("\(testPath)")
        
        let rect = CGRect(x: 0.0, y: 0.0, width: 10.0, height: 50.0)
        let area = rect.area
        print("\(area)")
    }
    
    func testConclusure() -> Void {
        let completionBlock: (String, NSError?) -> Void = {str, error in
            print("\(str)")
        }
        completionBlock("5", nil)
    }
    
    func testViewController() -> Void {
//        let myVC:MyViewController = MyViewController()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

