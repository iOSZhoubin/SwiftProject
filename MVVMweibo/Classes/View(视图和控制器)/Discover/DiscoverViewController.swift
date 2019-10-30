//
//  DiscoverViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class DiscoverViewController: ZBBaseViewViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        creatUI();
    }
    
    @objc private func discoverAction(){
        
        let vc = DiscoverPushViewController();
        
        vc.hidesBottomBarWhenPushed = true;
        
        navigationController?.pushViewController(vc, animated: true);
    }
}


//MARK ：设置界面
extension DiscoverViewController{
    
    private func creatUI(){
        
        view.backgroundColor = UIColor.cyan;
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "发现", style: .plain, target: self, action: #selector(discoverAction));
    }
}
