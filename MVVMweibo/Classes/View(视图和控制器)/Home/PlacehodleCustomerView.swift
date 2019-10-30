//
//  PlacehodleCustomerView.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/28.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

//protocol CustomerDelegate{
//
//    func firstDelegate()
//
//}

@objc protocol CustomerDelegate: NSObjectProtocol{
    
    @objc optional func firstDelegate(returnString:String)
    
}


//等待图片
class PlacehodleCustomerView: UIView {
    
//    typealias myblock = (String) -> Void
//
//    var backBlock : myblock?

    weak var delegate: CustomerDelegate?
    
    var iconView:UIImageView = UIImageView();
    var placeView:UIImageView = UIImageView();
    var tipLabel:UILabel = UILabel();
    var loginBtn:UIButton = UIButton();
    var regBtn:UIButton = UIButton();

    override init(frame: CGRect) {
        super.init(frame: frame);
                
        setupUI();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension PlacehodleCustomerView{
    
    func setupUI(){
        
        backgroundColor = UIColor.lightGray;
        
        setCustomerView();
        
//        startAnima();
    }
    
    
    func startAnima(){
        //添加旋转动画
        let anima = CABasicAnimation(keyPath: "transform.rotation");
        
        anima.toValue = 2 * Double.pi;  //从某一位置到某一位置
        
        anima.repeatCount = MAXFLOAT; //不停的旋转
        
        anima.duration = 15;//旋转一圈的事件
        
        anima.isRemovedOnCompletion = false;  //动画完成之后不删除，如果placeView被释放，动画会被销毁
        
        placeView.layer.add(anima, forKey: nil); //动画添加到图层
    }
    
    private func setCustomerView(){
    //1、设置视图
        //最外层视图(背景图)
//        iconView.image = UIImage.init(named: "");
        //图片
//        placeView.image = UIImage.init(named: "");
        placeView.backgroundColor = UIColor.yellow;
        placeView.frame = CGRect(x:10, y:150, width:200, height:120);
        //提示标签
        tipLabel.text = "关注一些人，回这里看看有什么惊喜";
        tipLabel.font = UIFont.systemFont(ofSize: 14);
        tipLabel.textColor = UIColor.blue;
        tipLabel.frame = CGRect(x:10, y:300, width:300, height:30);

        //注册按钮
        loginBtn.setTitle("注册", for: .normal);
        loginBtn.setTitleColor(.orange, for: .normal)
        loginBtn.backgroundColor = UIColor.cyan;
        loginBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14);
        loginBtn.addTarget(self, action: #selector(regAction), for: .touchUpInside);
        loginBtn.frame = CGRect(x:10, y:350, width:100, height:30);

        //登录按钮
        regBtn.setTitle("登录", for: .normal);
        regBtn.setTitleColor(.black, for: .normal)
        regBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14);
        regBtn.backgroundColor = UIColor.cyan;
        regBtn.addTarget(self, action: #selector(loginAction), for: .touchUpInside);
        regBtn.frame = CGRect(x:200, y:350, width:100, height:30);

        addSubview(placeView);
        addSubview(tipLabel);
        addSubview(loginBtn);
        addSubview(regBtn);
      
        
    //2、取消 autoresizing
//        for v in subviews{
//
//            v.translatesAutoresizingMaskIntoConstraints = false;
//        }
        
    //3、自动布局(纯代码布局)
        
    // view1.attr1 = view2.attr2 * multiplier + constant (计算公式)
        
    //  item（视图）attribute（某个属性）relatedBy（等于，大于等于，小于等于）toItem（参照另外一个视图）attribute（某个属性）multiplier（乘积）constant（常数）
//        addConstraint(NSLayoutConstraint(item: placeView,
//                                         attribute: .centerX,
//                                         relatedBy: .equal,
//                                         toItem: self,
//                                         attribute: .centerX,
//                                         multiplier: 1.0,
//                                         constant: 0));
//
//        addConstraint(NSLayoutConstraint(item: placeView,
//                                         attribute: .centerX,
//                                         relatedBy: .equal,
//                                         toItem: self,
//                                         attribute: .centerX,
//                                         multiplier: 1.0,
//                                         constant: -60));
    }
}


extension PlacehodleCustomerView{
    
    //注册方法
    @objc private func regAction(){
        
//        if((backBlock) != nil){
//
//            backBlock!("注册")
//
//        }
        
        
        if((delegate) != nil){
         
            delegate!.firstDelegate!(returnString: "注册");

        }else{
            
            print("未设置代理");
        }
        
        
    }
    //登录方法
    @objc private func loginAction(){
        
//        if((backBlock) != nil){
//
//            backBlock!("登录")
//
//        }
        
        if((delegate) != nil){
            
            delegate!.firstDelegate!(returnString: "登录");
            
        }else{
            print("未设置代理");
        }
    }
    
}



////闭包一般形式
////有参有反
//let testOne: (String, String) -> String = {(str1, str2) in return str1 + str2}
////无参有反  可以直接省略 "in"
//let testTwo: () -> String = {return "test闭包"}
////无参无反
//let testThree: () -> Void = {print("test闭包")}
//
//typealias testBlock = (String) -> Void
