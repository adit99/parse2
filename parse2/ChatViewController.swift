//
//  ChatViewController.swift
//  parse2
//
//  Created by Aditya Jayaraman on 2/18/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var chatTextField: UITextField!
    
    @IBAction func onSend(sender: AnyObject) {
        var message = PFObject(className : "Message")
        
        message.setValue(chatTextField.text, forKey: "text")
    
        message.saveInBackgroundWithBlock({(succeeded: Bool!, error:NSError!) -> Void in
            if error == nil {
                println("saved message")
                
            } else {
                println("failed to save message")
            }
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Chat view controller loaded")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
