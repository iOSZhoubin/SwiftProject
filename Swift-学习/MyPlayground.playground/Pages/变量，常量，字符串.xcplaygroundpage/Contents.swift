import UIKit
import Foundation

var str = "Hello World"

let num = 21

if num != 20{
    
    print("不等于20");
}

let a = 10
let b = 20
var c = 0

if a > b {
    
    c = 100

}else{
    
    c = 30
}

let d = a > b ? 100 : 30

var name: String? = "张三"
var age: Int? = 20

if let _ = name,let _ = age{
    
    print("判断有值")
}

//如果name为空，那么name就等于abc
let newName = name ?? "abc"

var str1:String = "abcdefg"

(str1 as NSString).substring(with: NSMakeRange(2, 5))
(str1 as NSString).substring(to: 3)
(str1 as NSString).substring(from: 3)

//不包括10
for i in 0..<10{
    
    print(i)
}

//包括10
for i in 0...10{
    
    print(i)
}


