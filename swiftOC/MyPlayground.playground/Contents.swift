//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

var str = "Hello world 你好"

//1.图片
let image:UIImage = UIImage(named: "1.png")!

//2.uibutton
let button = UIButton(frame: CGRectMake(0,0,100,100))
button.backgroundColor = UIColor.redColor()
button.layer.cornerRadius = 10
button.layer.borderWidth = 2



//3.函数
var j = 2
for i in 0  ..< 5{
    j *= i;
}

//4.view
var customView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
customView.backgroundColor = UIColor.blueColor()
customView.tintColor = UIColor.orangeColor()
customView.addSubview(button)

//第二种显示方法
XCPlaygroundPage.currentPage.liveView = customView

