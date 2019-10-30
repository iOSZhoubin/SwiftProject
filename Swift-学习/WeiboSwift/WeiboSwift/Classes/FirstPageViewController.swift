//
//  FirstPageViewController.swift
//  WeiboSwift
//
//  Created by jumpapp1 on 2019/8/29.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.getui();
    }
    

    //初始化ui
    func getui(){
        
        let btn = UIButton.init(frame: CGRect.init(x: 20, y: 150, width: 100, height: 30));
        
        btn.setTitle("跳 转", for: .normal);
        
        btn.backgroundColor = UIColor.blue;
        
        btn.setTitleColor(.white, for: .normal)
        
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16);
        
        btn.addTarget(self, action: #selector(jumpAction), for: UIControl.Event.touchUpInside);

        view.addSubview(btn);
        
    }
    
    
    //按钮点击事件
    @objc func jumpAction(btn:UIButton){
        
        let thirdVc = ThirdPageViewController.init();
        
        thirdVc.hidesBottomBarWhenPushed = true;

        self.navigationController?.pushViewController(thirdVc, animated: true);
    }

}
