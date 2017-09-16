//
//  LoginViewController.swift
//  Matchme
//
//  Created by Rui Zhang on 15/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Signinbutton: UIButton!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Signinbutton.layer.cornerRadius = 8
        self.Signinbutton.layer.borderWidth = 2
        self.Signinbutton.layer.borderColor = UIColor.white.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainPage"
        {
            _ = segue.destination
        }
    }
    
    @IBAction func checkUser(_ sender: UIButton) {
        let name:String = Username.text!
        let password:String = Password.text!
        
        // if account info is correct, 
        if name=="liwei" && password=="111"
        {
            self.performSegue(withIdentifier: "MainPage", sender: sender)
        }
        else
        {
            let msg = (self.Password.text?.isEmpty)!
                ? "Password cannot be empty!"
                : "Username or password is wrong!"
            let controller = UIAlertController(title:"Invalid", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "get it", style: .cancel, handler: nil)
            controller.addAction(cancelAction)
            self.present(controller, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
