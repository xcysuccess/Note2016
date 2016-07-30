##OC工程中如何使用swift
swift的基础语法相信大家都看过很多,这里有最全的资料:[swift官网](https://developer.apple.com/swift/)
### 一. 建立工程
	

### 二. 从OC到swift的简单过渡

#### 1. 一些基本类型的建议  

| OC | Swift|
| ------------- |:-------------:|
| NSString | String	|
| id | AnyObject |
|   | @ objc  |
|   | ? |
|   | ! |
| respond | if let |
|  | as |
| nil | optional隐式拆箱 |
|		| convenience |

String判空:  

#### 2. 初始化
在oc中:  

```objc
- (instancetype)init;
- (instancetype)initWithFrame:(CGRect)frame
                        style:(UITableViewStyle)style;
```

在swift中:   

```objc 
init() { /* ... */ }
init(frame: CGRect, style: UITableViewStyle) { /* ... */ }
```
统一都是`init(`开头，然后里面加参数，更加统一化  

#### 3. 实例化对象
在oc中:

```objc
UITableView *myTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
```

在swift中:   

```objc
let myTableView: UITableView = UITableView(frame: CGRectZero, style: .Grouped)
```
去掉了`alloc`和`init`，在使用工厂方法的时候,swift统一做了更好的处理,将其直接映射到了swift的初始化方法:  

在oc中:  

```objc
UIColor *color = [UIColor colorWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];
```

在swift中:  

```objc
let color = UIColor(red: 0.5, green: 0.0, blue: 0.5, alpha: 1.0)
```

#### 4. 访问属性
在oc中:  

```objc
[UIColor darkGrayColor];
textfield.text = @"test";
```  

在swift中:  

```objc
UIColor.darkGrayColor()
myTextField.text = "Hello world"
```
当获取或设置属性的时候，只需要写属性的名字，不需要写括号。但要注意darkGrayColor包含了一个括号。这是因为darkGrayColor是UIColor的一个类方法，不是一个属性  

#### 5. 使用方法
在oc中:  

```objc
[myTableView insertSubview:mySubview atIndex:2];
```  

在swift中:  

```objc
myTableView.insertSubview(mySubview, atIndex: 2)
myTableView.layoutIfNeeded() //不带参数
```
属性和方法都是一个宗旨，将`()`进行到底  

#### 6. id 兼容性
##### 6.1 基本用法
Swift 包含一个叫做 AnyObject 的协议类型，它代表任何类型的对象，就像 Objective-C 中的 id 一样。还能在不进行强制类型转换的情况下调用任何 Objective-C 的方法和访问任何的属性。这包含用 @objc 属性标记的 Objective-C 兼容方法,在swift中:  

```objc
var myObject: AnyObject = UITableViewCell()
myObject = NSDate()

let futureDate = myObject.dateByAddingTimeInterval(10)
let timeSinceNow = myObject.timeIntervalSinceNow
```
**注意:crash!**  

```objc
myObject.characterAtIndex(5)
// crash, myObject doesn't respond to that method
```
因为只有在运行时 AnyObject 类型的对象里面的具体类型才会明确，这样就很容以写出不安全的代码。另外，和 Objective-C 比起来，如果你调用了 Anyobject 中不存在的方法或属性，就会产生运行时错误。例如，如下代码不会产生编译错误，但会在运行时出现未定义的方法错误。
可用用Optional开消除错误  

```objc
let myCount = myObject.count
let myChar = myObject.characterAtIndex?(5)
print("\(myCount),\(myChar)") //结果 nil,nil
``` 

##### 6.3 向下转型 
可以检测这个 optional 值来决定类型转换是否成功  

```objc
let userDefaults = NSUserDefaults.standardUserDefaults()
let lastRefreshDate: AnyObject? = userDefaults.objectForKey("LastRefreshDate")
if let date = lastRefreshDate as? NSDate {
    print("\(date.timeIntervalSinceReferenceDate)")
}
```
**注意:crash**  

```objc
let date = lastRefreshDate as! NSDate
```
as! 转换类型不对的话就crash,记住类型不确定了时候为了避免crash最好用 as?  

#### 7. Extension扩展
Swift 中的 Extension Objective-C 的 Category 类似。Extension 扩展了现存的**类，结构体，枚举**的行为，包括那些在 Objective-C 中定义的。你可以在系统框架或是你自定义的类型上定义 Extension。只需要简单的导入相应的模块，并且引用你在 Objective-C 中同样的类，结构体和枚举名称。

```objc
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
func testExtern() -> Void {
    let testPath:UIBezierPath = UIBezierPath.init(triangleSideLength: 1.0, origin: CGPointMake(5, 10))
    print("\(testPath)")
    
    let rect = CGRect(x: 0.0, y: 0.0, width: 10.0, height: 50.0)
    let area = rect.area
    print("\(area)")
}

<UIBezierPath: 0x7f9e44857b90; <MoveTo {5, 10}>,
 <LineTo {1, 5}>,
 <LineTo {0.5, 0.86602538824081421}>,
 <Close>
500.0
```

#### 8. Closure
函数闭包：block，在oc中:  

```objc
void (^completionBlock)(NSData *, NSError *) = ^(NSData *data, NSError *error) {/* ... */}
```   

在swift中:

```objc
func testConclusure() -> Void {
    let completionBlock: (String, NSError?) -> Void = {str, error in
        print("\(str)")
    }
    completionBlock("5", nil)
}
```
#### 11. #selector



### 三. 看OC/Swift的混用需要注意的点
#### 1. 对象比较
对象比较：

#### 2. 类型兼容
##### 2.1 是否继承NSObject或者oc的类
当你定义的 Swift 类继承自 NSObject 或者其他 Objective-C 类的时候，这个类就自动与 Objective-C 兼容。所有相关这一切的步骤都已经由 Swift 编译器帮你完成。 
在`Persion.swift`中:  

```objc
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
```  

在`oc`中:  

```objc
//
//  Squirrel.m
//  XXSwiftUseOC
//
//  Created by tomxiang on 7/30/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

#import "Squirrel.h"
#import "XXSwiftUseOC-Swift.h"

@implementation Squirrel

-(void) print{
    Person *person = [[Person alloc] init];
    [person printName];
}
@end
```
#### 2.2 @objc更改暴露給oc的方法等
比如现在在swift中我们是这么写的:  

```objc
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
```

在｀项目工程名-swift.h`中，我们看到的是这样：  

```objc
SWIFT_CLASS_NAMED("Apple")
@interface GameSwfitItem : NSObject
@property (nonatomic, copy) NSString * _Nonnull swiftName;
- (nonnull instancetype)initSwift:(NSString * _Nonnull)name OBJC_DESIGNATED_INITIALIZER;
@end
```

#### 3. swift/C++
苹果官网有一句话:  
You cannot import C++ code directly into Swift. Instead, create an Objective-C or C wrapper for C++ code.  
swift无法直接用c++，需要用oc或者c进行包装


### 四. swift高效篇
#### 1. `map`

#### 2. 

#### 3. 单例



### 五. playground实时显示 

 


### 六. 参考目录
1.[Using Swift with Cocoa and Objective-C (Swift 2.2)
](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/BuildingCocoaApps/InteractingWithObjective-CAPIs.html#//apple_ref/doc/uid/TP40014216-CH4-ID35)  
2.[15 Tips to Become a Better Swift Developer
](http://savvyapps.com/blog/swift-tips-for-developers)  
3.[Swift项目兼容Objective-c问题汇总](http://00red.com/blog/2015/06/02/swift-objectivec-compatible/)