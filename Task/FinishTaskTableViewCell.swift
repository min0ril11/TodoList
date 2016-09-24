//
//  FinishTaskTableViewCell.swift
//  TodoList
//
//  Created by fukumoriminori on 2016/09/24.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit

class FinishTaskTableViewCell: UITableViewCell {
    
    var tasks: [Task] = []

    @IBOutlet weak var finishTaskLabel: UILabel!
    @IBOutlet weak var doneLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}