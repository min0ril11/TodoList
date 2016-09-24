//
//  FinishedTaskViewCell.swift
//  TodoList
//
//  Created by fukumoriminori on 2016/09/24.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit

class FinishedTaskViewCell: UITableViewCell {
    
    /// タイトルを表示するLabel
    @IBOutlet weak var finishTaskTable: UITableView!
    @IBOutlet weak var finishTaskLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    /// 画像・タイトル・説明文を設定するメソッド
    func setCell(titleText: String, descriptionText: String) {
        finishTaskLabel.text = titleText
    }

}
