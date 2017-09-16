//
//  RegisterViewController.swift
//  Matchme
//
//  Created by Rui Zhang on 20/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var SignUp: UIButton!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var ConfirmPW: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.SignUp.layer.cornerRadius = 9
        
        //self.SignUp.layer.borderWidth = 2
        //self.SignUp.layer.borderColor = UIColor.red.cgColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signup(_ sender: UIButton) {
        
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
