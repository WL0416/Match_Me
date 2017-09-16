//
//  MessageViewController.swift
//  Matchme
//
//  Created by Rui Zhang on 21/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var MessageTable: UITableView!
    var message = ["Jane"]
    var myIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MessageTable.delegate = self
        MessageTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return message.count
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cellId = "MessageCell"
        var cell:UITableViewCell? = MessageTable.dequeueReusableCell(withIdentifier: cellId)
        
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle,reuseIdentifier: cellId)
        }
        
        cell?.imageView?.clipsToBounds = true
        cell?.imageView?.layer.cornerRadius = 10
        cell?.imageView?.image = UIImage(named:"girl-6")
        cell?.textLabel?.text = message[indexPath.row]
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell?.detailTextLabel?.text  = "hello";
        return cell!
        
    }
    
    public  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "MessageSegue", sender:self)
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
