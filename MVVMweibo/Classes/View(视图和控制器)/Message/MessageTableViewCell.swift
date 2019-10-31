//
//  MessageTableViewCell.swift
//  MVVMweibo
//
//  Created by jumpapp1 on 2019/10/31.
//  Copyright © 2019年 zb. All rights reserved.
//

import UIKit

@objc protocol ClickBtnDelegate: NSObjectProtocol{
    
    @objc optional func clickAction(returnBtn:UIButton)
    
}


class MessageTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    weak var delegate: ClickBtnDelegate?
    
    public func refreshCellWithModel(model:HomeModel){
        
        titleLabel.text = model.message
        
        btn.setTitle(model.result, for: .normal)
    }

    

    
    @IBAction func clickAction(_ sender: UIButton) {
        
        if(delegate != nil){
            
            delegate?.clickAction!(returnBtn: sender)
        }
    }
}
