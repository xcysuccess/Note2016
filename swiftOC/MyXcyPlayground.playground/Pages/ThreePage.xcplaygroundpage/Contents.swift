//: [Previous](@previous)

import Foundation
import UIKit
import XCPlayground

let customView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
customView.backgroundColor = UIColor.whiteColor()
XCPlaygroundPage.currentPage.liveView = customView

//5.动画
// loop from 0 to 5
for i in 0...5 {
    
    // create a square
    let square = UIView()
    square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
    square.backgroundColor = UIColor.redColor()
    customView.addSubview(square)
    
    // randomly create a value between 0.0 and 150.0
    let randomYOffset = CGFloat( arc4random_uniform(150))
    
    // for every y-value on the bezier curve
    // add our random y offset so that each individual animation
    // will appear at a different y-position
    let path = UIBezierPath()
    path.moveToPoint(CGPoint(x: 16,y: 239 + randomYOffset))
    path.addCurveToPoint(CGPoint(x: 301, y: 239 + randomYOffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYOffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYOffset))
    
    // create the animation
    let anim = CAKeyframeAnimation(keyPath: "position")
    anim.path = path.CGPath
    anim.rotationMode = kCAAnimationRotateAuto
    anim.repeatCount = Float.infinity
    anim.duration = 5.0
    
    // add the animation
    square.layer.addAnimation(anim, forKey: "animate position along path")
    
}
