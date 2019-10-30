//
//  JumpPublicAction.h
//  JumpHousekeeper
//
//  Created by jumpapp1 on 2019/1/25.
//  Copyright © 2019年 zhoubin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JumpPublicAction : NSObject


//正则校验手机号码
+(BOOL)isTruePhoneNumber:(NSString *)cellNum;

//密码转为MD5
+(NSString *)md5:(NSString *)string;

//验证密码强度
+(BOOL)checkPassWord:(NSString *)passWord;


@end
