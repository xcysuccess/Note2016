//: [Previous](@previous)

import Foundation
import UIKit
import XCPlayground

let canvasView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
canvasView.backgroundColor = UIColor.whiteColor()

XCPlaygroundPage.currentPage.liveView = canvasView


let square = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
square.backgroundColor = UIColor.blueColor()

canvasView.addSubview(square)

UIView.animateWithDuration(2.0) {
    square.backgroundColor = UIColor.redColor()
    square.frame = CGRect(x: 200, y: 200, width: 50, height: 50)
}