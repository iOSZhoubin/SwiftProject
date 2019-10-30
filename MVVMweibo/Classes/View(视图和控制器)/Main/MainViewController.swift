//
//  MainViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class MainViewController: ZBBaseViewViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        creatUI();

    }
    
    @objc private func main(){
                
        let vc = MainpushTableViewController();
        
        vc.hidesBottomBarWhenPushed = true;
        
        navigationController?.pushViewController(vc, animated: true);
    }

}


//extension 类似于OC中的分类，在swift中还可以用来切分代码块
//可以把相近功能的函数防在extension中

//MARK ：设置界面
extension MainViewController{
    
    private func creatUI(){
        
        view.backgroundColor = UIColor.red;
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "我", style: .plain, target: self, action: #selector(main));
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: <#T##UIView#>)
    }

}
