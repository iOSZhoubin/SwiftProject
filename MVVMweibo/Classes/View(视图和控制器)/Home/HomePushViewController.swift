//
//  HomePushViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/28.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class HomePushViewController: ZBBaseViewViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatUI();
        
    }
}


extension HomePushViewController{
    
    private func creatUI(){
        
        navigationItem.title = "添加好友"
        
        getNetwork();
      

    }
    
    //未封装的网络请求

    private func getNetwork(){
        
        let urlString = "http://10.0.11.29:80/mobile/getDeviceRegisterSet.action"
        
//        AFNHelper.shared.get(urlString, parameters: nil, progress: nil, success: { (_, json) in
//
//            print(json ?? "123")
//
//        }) { (_, error) in
//
//            print("网络请求失败\(error)")
//        };
        
        AFNHelper.shared.request(method: .POST, urlString: urlString, parameters: ["123":"" as AnyObject]) { (json, isSuccess) in
            
            if(isSuccess == true){
             
                print(json ?? "123");

            }
        }
    
    }
    
}




