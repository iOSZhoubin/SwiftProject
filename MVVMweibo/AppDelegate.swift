//
//  AppDelegate.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
       window = UIWindow();
       
       window?.frame = UIScreen.main.bounds;
       
       window?.backgroundColor = UIColor.white;
       
        let tabBar = BaseTabBarViewController();
        
        window?.rootViewController = tabBar;
        
        window?.makeKeyAndVisible()
        
        
        return true
    }

}

