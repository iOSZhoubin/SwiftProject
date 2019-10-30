//
//  ZBNavigationViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class ZBNavigationViewController: UINavigationController {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        super.pushViewController(viewController, animated: true);
        
        if children.count > 0{
            
            viewController.hidesBottomBarWhenPushed = true;
        }
        
    }
}
