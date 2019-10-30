//
//  BaseTabBarViewController.swift
//  WeiboSwift
//
//  Created by jumpapp1 on 2019/8/29.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = FirstPageViewController.init();
        let vc2 = SecondPageViewController.init();
        
        self.baseSet(vc: vc1, str: "首页", image: "btn-mine-n", selectimage: "btn-mine-s");
        self.baseSet(vc: vc2, str: "状态", image: "btn-state-n", selectimage: "btn-state-s");

    }
    
    //添加控制器
    func baseSet(vc vc1:UIViewController,str title:String,image imageName:String,selectimage selectName:String) {
        
        let nav = UINavigationController.init(rootViewController: vc1);
        
        vc1.navigationItem.title = title;
        
        vc1.view.backgroundColor = UIColor.white;
        
        nav.tabBarItem.title = title;
        
        nav.tabBarItem.image = UIImage.init(named: imageName);
        
        let images = UIImage.init(named: selectName);
        
        images?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal);
        
        nav.tabBarItem.selectedImage = images;
        
        self.addChild(nav);
        
    }
    
}
