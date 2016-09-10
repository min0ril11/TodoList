//
//  ShuryoViewController.swift
//  Task
//
//  Created by fukumoriminori on 2016/09/10.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit

class ShuryoViewController: UIViewController {
    
    var tasks: [[String: String]] = []

    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var notdone: UIButton!
    @IBOutlet weak var finishText: UITextField!
    @IBOutlet weak var finish: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = NSUserDefaults.standardUserDefaults().objectForKey("todoList") as! [[String: String]]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func finish(sender: AnyObject) {
        /*var tasks = NSUserDefaults.standardUserDefaults().objectForKey("todoList") as! [[String: String]]
        let dic = ["title": "", "done": "", "comment": finishText.text!]
        tasks.append(dic)
        NSUserDefaults.standardUserDefaults().setObject(tasks, forKey: "todoList")*/
        
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
