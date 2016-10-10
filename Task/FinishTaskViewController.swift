//
//  FinishTaskViewController.swift
//  TodoList
//
//  Created by fukumoriminori on 2016/09/24.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit
import Foundation

class FinishTaskViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var finishTaskTable: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(animated: Bool) {
        tasks = Task.findDone()
        finishTaskTable.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    // セルに値を設定するデータソースメソッド（必須）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // セルを取得
        let cellValue = tableView.dequeueReusableCellWithIdentifier("FinishCell") as! FinishTaskTableViewCell
        // セルに値を設定
        cellValue.finishTaskLabel.text = tasks[indexPath.row].name
        if tasks[indexPath.row].done == true {
            cellValue.doneLabel.text = "できた"
        } else {
            cellValue.doneLabel.text = "できなかった"
        }
        
        dateLabel.text = "yyyy/MM/dd"
        
        return cellValue
    }
}
