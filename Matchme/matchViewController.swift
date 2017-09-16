//
//  matchViewController.swift
//  Matchme
//
//  Created by Rui Zhang on 8/19/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class matchViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var MatchTableView: UITableView!
   
    var Matchs = ["Zoe","Emma","Lilian"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MatchTableView.delegate = self
        MatchTableView.dataSource = self
       
        
        // Do any additional setup after loading the view.
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return Matchs.count
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cellId = "Matchcell"
        
        var cell:UITableViewCell? = MatchTableView.dequeueReusableCell(withIdentifier: cellId)
        
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle,reuseIdentifier: cellId)
        }
        
        cell?.imageView?.image = UIImage(named:"women")
        //cell?.imageView?.layer.masksToBounds = true;
        cell?.imageView?.clipsToBounds = true
        cell?.imageView?.layer.cornerRadius = 15
        
        //cell?.imageView?.layer.borderWidth = 2;
        //cell?.imageView?.layer.borderColor = UIColor.red.cgColor;
        cell?.textLabel?.text = Matchs[indexPath.row]
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        return cell!
        
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
