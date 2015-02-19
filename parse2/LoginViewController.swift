//
//  LoginViewController.swift
//  parse2
//
//  Created by Aditya Jayaraman on 2/18/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func onLogin(sender: AnyObject) {

        PFUser.logInWithUsernameInBackground(emailTextField.text, password: passwordTextField.text, block: {(user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                println("user logged in")
                self.performSegueWithIdentifier("gotochat", sender: self)
            } else {
                println("Login failed")
            }
        })
    }
    
    
    @IBAction func onSignup(sender: AnyObject) {
        var user = PFUser()
        
        user.username = emailTextField.text
        user.password = passwordTextField.text
        
        println("signup clicked")
        
        user.signUpInBackgroundWithBlock { (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                println("Success in sign up")
                self.performSegueWithIdentifier("gotochat", sender: self)
            } else {
                println("Signup failed")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
