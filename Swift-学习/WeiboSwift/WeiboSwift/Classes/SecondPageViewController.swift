//
//  SecondPageViewController.swift
//  WeiboSwift
//
//  Created by jumpapp1 on 2019/8/29.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

class SecondPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.geiui();

    }
    
    func geiui(){
        
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height));
        
        tableView.delegate = self as? UITableViewDelegate;
        
        tableView.dataSource = self as? UITableViewDataSource;
        
        self.view.addSubview(tableView);
        
        tableView.reloadData();
        
    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
     
        return 10;
    }
    
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let identifier = "cell";
        
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier);
        
        if(cell == nil){
            
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: identifier);
            
            cell?.textLabel?.text = "123";
        }
        
        return cell!;
        
    }
    
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return 57;
    }

    
    
}
