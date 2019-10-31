//
//  ZBBaseViewViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class ZBBaseViewViewController: UIViewController {
        
    override func viewDidLoad() {
        
        super.viewDidLoad()

        view.backgroundColor = UIColor.white;
    
    }
}



extension ZBBaseViewViewController{
    
    // JSONString转换为字典
    
    func getDictionaryFromJSONString(jsonString:String) ->NSDictionary{
        
        let jsonData:Data = jsonString.data(using: .utf8)!
        
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
        if dict != nil {
            return dict as! NSDictionary
        }
        return NSDictionary()
        
        
    }
    
    //2、JSONString转换为数组
    
    func getArrayFromJSONString(jsonString:String) ->NSArray{
        
        let jsonData:Data = jsonString.data(using: .utf8)!
        
        let array = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
        if array != nil {
            return array as! NSArray
        }
        return array as! NSArray
        
    }
    
    //3、字典转换为JSONString
    
    
    /**
     字典转换为JSONString
     
     - parameter dictionary: 字典参数
     
     - returns: JSONString
     */
    func getJSONStringFromDictionary(dictionary:NSDictionary) -> String {
        if (!JSONSerialization.isValidJSONObject(dictionary)) {
            print("无法解析出JSONString")
            return ""
        }
        let data : NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData!
        let JSONString = NSString(data:data as Data,encoding: String.Encoding.utf8.rawValue)
        return JSONString! as String
        
    }
    
    //4、数组转换为JSONString
    
    //数组转json
    func getJSONStringFromArray(array:NSArray) -> String {
        
        if (!JSONSerialization.isValidJSONObject(array)) {
            print("无法解析出JSONString")
            return ""
        }
        
        let data : NSData! = try? JSONSerialization.data(withJSONObject: array, options: []) as NSData!
        let JSONString = NSString(data:data as Data,encoding: String.Encoding.utf8.rawValue)
        return JSONString! as String
        
    }
}


