
import Foundation

var str = "Hello, playground"

var dict = ["name":"zhangsan","age":"18"]

for (key,value) in dict{
    
    print("\(key),\(value)");
}

//删除
var muDict:NSMutableDictionary? = NSMutableDictionary.init()

muDict!["name"] = "lisi"

muDict!["age"] = "19"

muDict?.removeObject(forKey: "name")



var dict2 = ["name":"zhangsan","age":"18"]
//将dict3中的数值添加到dict2中
let dict3 = ["title":"boss","name":"wang"]

for(key,value) in dict3{
    
    dict2[key] = value
}


