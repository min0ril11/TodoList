//
//  ShuryoViewController.swift
//  Task
//
//  Created by fukumoriminori on 2016/09/10.
//  Copyright © 2016年 fukumoriminori. All rights reserved.
//

import UIKit

class ShuryoViewController: UIViewController {

    var task: Task?
    var tasks: [Task] = []
    
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var notdone: UIButton!
    @IBOutlet weak var finishText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // textfield枠線の太さを設定する.
        finishText.layer.borderWidth = 1
        // textfield枠線の色を黒に設定する.
        finishText.layer.borderColor = UIColor.blackColor().CGColor
        
        // ナビゲーションバーのタイトルを設定する.
        //self.navigationItem.title = tasks.name
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.task = appDelegate.toTask
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    @IBAction func done(sender: AnyObject) {
        task!.update(finishText.text, complete: true, date: "yyyy/MM/dd")
        if finishText.text == "" {
            let alertController = UIAlertController(title: "コメントを入力してください", message: "", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
                alertController.addAction(defaultAction)
                presentViewController(alertController, animated: true, completion: nil)
            }/* else {
                Task(id: Task.findAll().count+1, name: finishText.text!, done: false, comment: "").save()
                
                let alertController = UIAlertController(title: "お疲れ様でした！", message: "", preferredStyle: .Alert)
                let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
                alertController.addAction(defaultAction)
                presentViewController(alertController, animated: true, completion: nil)
        }*/
        
        let date = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        
        let formattedDate = formatter.stringFromDate(date)
        print(formattedDate)
        
    }
    
    @IBAction func notDone(sender: AnyObject) {
        task!.update(finishText.text, complete: false, date: "yyyy/MM/dd")
        if finishText.text == "" {
            let alertController = UIAlertController(title: "コメントを入力してください", message: "", preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            presentViewController(alertController, animated: true, completion: nil)
        }/* else {
            Task(id: Task.findAll().count+1, name: finishText.text!, done: false, comment: "").save()
            
            let alertController = UIAlertController(title: "お疲れ様でした！", message: "", preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            presentViewController(alertController, animated: true, completion: nil)
        }*/
        
        let date = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        
        let formattedDate = formatter.stringFromDate(date)
        print(formattedDate)

    }
}