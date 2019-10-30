
import Foundation

var str = "Hello, playground"

//有参数又返回值
func sum(num1 x:Int,num2 y:Int) -> Int{

    return x + y
}

sum(num1:1,num2:2)

//有参数无返回值
func voidDemo(str x:String){
    
    print("haha")
}

voidDemo(str:"1")


