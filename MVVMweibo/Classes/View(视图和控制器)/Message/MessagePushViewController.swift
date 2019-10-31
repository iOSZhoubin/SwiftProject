//
//  MessagePushViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/28.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

private let cellId = "MessageTableViewCell"

class MessagePushViewController: ZBBaseViewViewController,UITableViewDelegate,UITableViewDataSource,ClickBtnDelegate {
    
    var tableView:UITableView?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatUI();
    }
}


//MARK ：设置界面
extension MessagePushViewController{
    
    private func creatUI(){
        
        view.backgroundColor = UIColor.blue;
        
        setTableView()
        
    }
    //设置tableView
    private func setTableView(){
        
        tableView = UITableView(frame: view.bounds, style: .plain);
        
//        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        tableView?.register(UINib.init(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
        
        tableView?.delegate = self;
        
        tableView?.dataSource = self;
        
        tableView?.tableFooterView = UIView();

        view.addSubview(tableView!);
    }
}



//UITableViewDelegate,UITableViewDataSource
extension MessagePushViewController{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false);
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MessageTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellId) as! MessageTableViewCell
        
        cell.delegate = self

        let model =  HomeModel()
        
        model.message = "AAAAA"
        model.result = "ABCD+\(indexPath.row)"
        
        cell.refreshCellWithModel(model: model)
        
        return cell;
    }
    
    func clickAction(returnBtn: UIButton) {
        
        print("点击的按钮是\(String(describing: returnBtn.titleLabel!.text))")
    }

}


