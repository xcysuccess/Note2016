//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

var str = "Hello world 你好"

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

//1.图片
let image:UIImage = UIImage(named: "1.png")!

//2.uibutton
let button = UIButton(frame: CGRectMake(0,0,100,100))
button.backgroundColor = UIColor.redColor()
button.layer.cornerRadius = 10
button.layer.borderWidth = 2


//3.函数  点击editor的show display mode可以改变其查看方式
var j = 2
for i in 0  ..< 5{
    j += i*j
}

//4.add color
let imageView = UIImageView(image:UIImage(named:"1.png"))


//5.view
//第二种显示方法
XCPlaygroundPage.currentPage.liveView = imageView

let customView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
customView.backgroundColor = UIColor.whiteColor()
//XCPlaygroundPage.currentPage.liveView = customView

//5.动画

