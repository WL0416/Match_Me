//
//  FirstViewController.swift
//  Matchme
//
//  Created by Wei Li on 9/4/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var fackbook: UIButton!
    
    @IBOutlet weak var normalstart: UIButton!
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var pageController: UIPageControl!
    
    // var timer:Timer!
    var updateCounter:Int! = 1
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        pageController.currentPage = updateCounter - 1
        /*
         timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(FirstViewController.updateTimer), userInfo: nil, repeats: true)
        */
        // Do any additional setup after loading the view.
        
    }
    @IBAction func swipeToRight(_ sender: UISwipeGestureRecognizer) {
        if(updateCounter > 1){
            updateCounter = updateCounter - 1
        } else {
            updateCounter = 3
        }
        updateImage()
    }
    
    @IBAction func swipeToLeft(_ sender: UISwipeGestureRecognizer) {
        if(updateCounter < 3) {
            updateCounter = updateCounter + 1
        } else {
            updateCounter = 1
        }
        updateImage()
    }
    
    internal func updateImage()
    {
        background.image = UIImage(named: "t"+String(updateCounter)+".png")
        pageController.currentPage = updateCounter - 1
    }
    
    /*
    internal func updateTimer()
    {
        if(updateCounter<=2)
        {
            pageController.currentPage = updateCounter
            background.image = UIImage(named: String(updateCounter)+".png")
            updateCounter = updateCounter + 1
        }
        else
        {
            updateCounter = 0
        }
    }
    */
    
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
