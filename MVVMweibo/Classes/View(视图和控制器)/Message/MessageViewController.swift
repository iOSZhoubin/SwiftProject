//
//  MessageViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class MessageViewController: ZBBaseViewViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        creatUI();
    }
    
    @objc private func message(){
        
        let vc = MessagePushViewController();
        
        vc.hidesBottomBarWhenPushed = true;
        
        navigationController?.pushViewController(vc, animated: true);
    }
      
}

//MARK ：设置界面
extension MessageViewController{
    
    private func creatUI(){
        
        view.backgroundColor = UIColor.yellow;
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "消息", style: .plain, target: self, action: #selector(message));

    }
}
