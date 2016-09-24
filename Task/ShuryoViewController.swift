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
    
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var notdone: UIButton!
    @IBOutlet weak var finishText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        task!.update(finishText.text, done: true)
    }
    
    @IBAction func notDone(sender: AnyObject) {
        task!.update(finishText.text, done: false)
    }

}
