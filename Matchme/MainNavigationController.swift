//
//  MainNavigationController.swift
//  Matchme
//
//  Created by Rui Zhang on 14/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barStyle = UIBarStyle.blackTranslucent
        self.navigationBar.tintColor = UIColor.white
        self.navigationItem.backBarButtonItem?.image = UIImage(named:"003-arrows.png")
 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
