//
//  ProfileViewController.swift
//  Matchme
//
//  Created by Rui Zhang on 21/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var Meimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Meimage.layer.cornerRadius = Meimage.frame.size.width/2
        Meimage.clipsToBounds = true
        
        
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
