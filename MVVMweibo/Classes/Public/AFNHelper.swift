//
//  AFNHelper.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/30.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit


//swift 的枚举支持任意数据类型
//OC中都只支持整数
enum AFNHelperMethod{
    
    case GET
    case POST
}

class AFNHelper: AFHTTPSessionManager {
    
    //    OC 创建单例
    //    static AFNHelper *shared = nil;
    //
    //    static dispatch_once_t onceToken;
    //
    //    dispatch_once(&onceToken,^{
    //
    //    });
    
    //创建单例，静态区/常量/闭包
    //在第一次访问时，执行闭包，i并且将结果保存在 shared 常量中
    static let shared = AFNHelper()
    
    
    
    /// 封装基于 AFN 的 Get / POST 请求
    ///
    /// - Parameters:
    ///   - method: Get / POST
    ///   - urlString: url
    ///   - parameters: 参数字典
    ///   - completion: 完成回调 【json（字典或数组），是否成功】
    func request(method:AFNHelperMethod = .POST,urlString:String,parameters:[String:AnyObject],completion : @escaping (Any?,Bool)->() ) -> Void{
    
        //定义两个闭包 （参数）->（返回值）
        
        //成功闭包
        let successBlock = {(task : URLSessionDataTask , responseObj : Any?) in

            completion(responseObj,true)
        }

        //失败闭包
        let failureBlock = { (task : URLSessionDataTask? , error : Error) in

            print("网络请求错误 \(error)")
        
            completion(nil,false)

        }
        
        if method == .GET {
            

            get(urlString, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
            
        }else{
            
            post(urlString, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)

        }
        
    }
    
}


//用一个函数把get和post包装在一起，闭包

extension AFNHelper{
    
}
