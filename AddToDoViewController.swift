//
//  AddToDoViewController.swift
//  Task
//
//  Created by fukumoriminori on 2016/09/10.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addItem: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItem(sender: AnyObject) {
        var tasks = NSUserDefaults.standardUserDefaults().objectForKey("todoList") as! [[String: String]]
        let dic = ["title": textField.text!, "done": "", "comment": ""]
        tasks.append(dic)
        NSUserDefaults.standardUserDefaults().setObject(tasks, forKey: "todoList")
        
        
        /*let hoge = NSUserDefaults.standardUserDefaults().objectForKey("todoList") as? [[String: String]]
        print(hoge)*/
    }
    /*
    改行ボタンが押された際に呼ばれるデリゲートメソッド.
    */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
