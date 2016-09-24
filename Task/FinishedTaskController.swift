//
//  FinishedTaskController.swift
//  TodoList
//
//  Created by fukumoriminori on 2016/09/24.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit

var tasks: [Task] = []

class FinishedTaskController: UITableViewController,UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    // セルに値を設定
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // セルを取得
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell") as! FinishedTaskController
        
        cell.setCell(imageNames[indexPath.row], titleText: imageTitles[indexPath.row], descriptionText: imageDescriptions[indexPath.row])
        
        return cell
    }

}
