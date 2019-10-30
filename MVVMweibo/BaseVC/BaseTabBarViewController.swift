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
        
        let vc1 = HomeViewController();
        let vc2 = MessageViewController();
        let vc3 = DiscoverViewController();
        let vc4 = MainViewController();
        
//        let vc5 = UIViewController();
        
        self.baseSet(vc: vc1, str: "首页", image: "", selectimage: "");
        self.baseSet(vc: vc2, str: "消息", image: "", selectimage: "");
//        self.baseSet(vc: vc5, str: "  ", image: "", selectimage: "");
        self.baseSet(vc: vc3, str: "发现", image: "", selectimage: "");
        self.baseSet(vc: vc4, str: "我", image: "", selectimage: "");
        
//        addItem();

    }
    
    //添加控制器
    func baseSet(vc vc1:UIViewController,str title:String,image imageName:String,selectimage selectName:String) {
        
        let nav = UINavigationController.init(rootViewController: vc1);
        
        vc1.navigationItem.title = title;
        
        nav.tabBarItem.title = title;
        
        nav.tabBarItem.image = UIImage.init(named: imageName);
        
        let images = UIImage.init(named: selectName);
        
        images?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal);
        
        nav.tabBarItem.selectedImage = images;
        
        addChild(nav);
        
    }
    
    
    //初始化ui
    func addItem(){

//        let btn = UIButton.init(frame: CGRect.init(x: 20, y: 150, width: 100, height: 30));

        let count = CGFloat(viewControllers!.count);

        let w = tabBar.bounds.width / count - 1; //计算item的宽度(-1是为了防止点了按钮进入了AddViewController页面)

        //OC向内缩进 CGRectInset 正数向内缩进    负数向外扩展
        let btn = UIButton.init(frame: tabBar.bounds.insetBy(dx: 2 * w, dy: 0));//x向内缩紧两个宽度

        btn.frame.size.height = 60;
        btn.frame.size.width = w + 1;

        btn.setTitle("添加", for: UIControl.State.normal);

        btn.backgroundColor = UIColor.blue;

        btn.titleLabel?.textColor = UIColor.orange;

        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16);

        btn.addTarget(self, action: #selector(jumpAction), for: .touchUpInside);

        tabBar.addSubview(btn);

    }

    //按钮点击事件(private修饰，私有方法 @objc 允许函数在运行时通过OC的消息机制被调用)
    @objc func jumpAction(btn:UIButton){

        print("添加事件");
    }
    
}
