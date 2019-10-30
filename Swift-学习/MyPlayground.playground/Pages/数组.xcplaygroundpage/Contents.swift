//: [Previous](@previous)

import UIKit
import Foundation

var str = "Hello, playground"

let array = ["zhang","san"]

//初始化
var muArray:NSMutableArray? = NSMutableArray.init()
//var muArray = [String]()

for name in array{
    
    print(name)
    
    //添加元素
    muArray?.add(name)
}

print(muArray!)

//删除
muArray?.removeObject(at: 0)
print(muArray!)

//插入
muArray?.insert("123", at: 1)
print(muArray!)

//替换数组中的元素
muArray?.replaceObject(at: 1, with: "234")
print(muArray!)

//添加数组
muArray?.addObjects(from: array)
print(muArray!)

//给数组添加默认值
var array3 = [Int](repeating:0, count:9);

