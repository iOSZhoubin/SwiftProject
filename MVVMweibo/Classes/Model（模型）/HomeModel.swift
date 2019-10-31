//
//  HomeModel.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/31.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class HomeModel: NSObject {
    
    @objc var result:String?
    @objc var message:String?
//    var ID:String?

    
//    //后台返回字段id，我对应的属性名字为ID,因此重写如下方法
//    override static func mj_replacedKeyFromPropertyName() -> [AnyHashable : Any]! {
//
//        return ["ID":"id"]
//    }
}






////model嵌套
//
//class WGLoginModel: NSObject {
//    
//    @objc var name: String?
//    @objc var userTypeId: String?
//    //子model嵌套
//    @objc var attributesMap: WGLoginAttributesMapModel?
//    //子model数组
//    @objc var hospitalsList:Array<WGHospitalModel>?
//    
//    //因为有子model数据,需要重写如下方法
//    override func mj_keyValuesDidFinishConvertingToObject() {
//        if self.hospitalsList != nil {
//            
//            let list = WGHospitalModel.mj_objectArray(withKeyValuesArray: self.hospitalsList)
//            if list != nil {
//                self.hospitalsList = list! as NSArray as? [WGHospitalModel]
//            }
//        }
//    }
//}
//
//class WGLoginAttributesMapModel: NSObject {
//    
//    @objc var userDeptIds:String?
//    @objc var userGudiceTag:Int = 0
//    @objc var yunXinInfor:String?
//}
//
//class WGHospitalModel: NSObject {
//    
//    @objc var bedNum = 0
//    @objc var openFlag = false
//    @objc var sortOrder:String?
//    @objc var satisfaction:String?
//    @objc var name:String?
//    @objc var nurseAssessFlag:String?
//    @objc var followUp:String?
//    @objc var nurseTrain:String?
//    @objc var inner:String?
//    @objc var ID:String?
//    
//    override static func mj_replacedKeyFromPropertyName() -> [AnyHashable : Any]! {
//        
//        return ["ID":"id"]
//    }
//}
