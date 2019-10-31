//
//  HomeViewController.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/19.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit


private let cellId = "cellid"

class HomeViewController: ZBBaseViewViewController,UITableViewDelegate,UITableViewDataSource,CustomerDelegate {

    var userLogon = true;//用户是否登录过
    
    var refreshControl:UIRefreshControl? //刷新控件

    var tableView:UITableView?;

    private lazy var dataArray = [String]();//懒加载
    
    @objc func loadData(){//虚拟数据
        
        for i in 0..<10{
            
            dataArray.insert(i.description, at: 0);
            
        }
        
        //设置刷新图标的颜色
        refreshControl?.tintColor = UIColor.red;
        //设置刷新文字
        refreshControl?.attributedTitle = NSAttributedString(string: "正在刷新...");
        //结束刷新
        refreshControl?.endRefreshing();
        //刷新tableview
        tableView?.reloadData();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        creatUI();
                
        if(userLogon){
            //如果登录过加载数据
            loadData();
        }
        
    }
    
//左上角按钮点击事件
    @objc private func addFirend(){
        
        let vc = HomePushViewController();
        
        vc.hidesBottomBarWhenPushed = true;
        
        navigationController?.pushViewController(vc, animated: true);
    }
    
    //view的代理方法
    func firstDelegate(returnString: String) {
        
        if(returnString == "注册"){
            
            print("主控制器响应注册代理");
            
        }else{
            
            print("主控制器响应登录代理");
        }
    }
}


//MARK ：设置界面
extension HomeViewController{
    
    private func creatUI(){
        
        view.backgroundColor = UIColor.blue;
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "添加好友", style: .plain, target: self, action: #selector(addFirend));
        
        //如果登录过就加载tableview  没有登录过就加载 customerView
        userLogon ? setTableView() : unLoginView();

        
    }
    //设置tableView
    private func setTableView(){
        
        tableView = UITableView(frame: view.bounds, style: .plain);
        
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        tableView?.delegate = self;
        
        tableView?.dataSource = self;
        
        tableView?.tableFooterView = UIView();
        
        //设置刷新控件
        
        //实例话化控件
        refreshControl = UIRefreshControl();
        //添加刷新
        tableView?.addSubview(refreshControl!);
        //添加监听方法
        refreshControl?.addTarget(self, action: #selector(loadData), for: .valueChanged);
        
        view.addSubview(tableView!);
    }
    
    //设置等待图片
    private func unLoginView(){
        
        let customerView = PlacehodleCustomerView(frame: view.bounds);
        
        customerView.delegate = self;
        
        view.addSubview(customerView);
    }

}



//UITableViewDelegate,UITableViewDataSource
extension HomeViewController{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false);
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath);
        
        cell.textLabel?.text = dataArray[indexPath.row];
        
        return cell;
    }
    
    //在现实最后一行的时候，做上拉刷新
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//
//        let row = indexPath.row;
//
//        let section = tableView.numberOfSections;
//
//        if(row < 0 || section < 0){
//
//            return;
//        }
//
//        let count = tableView.numberOfRows(inSection: section);
//
//        if(row == (count - 1)){
//            //开始上拉刷新
//        }
//
//    }
}


