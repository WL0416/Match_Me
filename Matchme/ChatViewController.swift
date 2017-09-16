//
//  ChatViewController.swift
//  Matchme
//
//  Created by Rui Zhang on 22/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController,ChatDataSource,UITextFieldDelegate{

    var Chats:NSMutableArray!
    var tableView:TableView!
    var me:UserInfo!
    var you:UserInfo!
    var txtMsg:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChatTable()
        setupSendPanel()
    }
    
    func setupSendPanel()
    {
        let screenWidth = UIScreen.main.bounds.width
        let sendView = UIView(frame:CGRect(x: 0,y: self.view.frame.size.height - 56,width: screenWidth,height: 56))
        
        sendView.backgroundColor=UIColor.white
        sendView.alpha=1
        
        txtMsg = UITextField(frame:CGRect(x: 7,y: 10,width: screenWidth - 95,height: 36))
        txtMsg.backgroundColor = UIColor.white
        txtMsg.layer.borderWidth = 1.5
        txtMsg.layer.borderColor = UIColor.lightGray.cgColor
        txtMsg.textColor=UIColor.black
        txtMsg.font=UIFont.boldSystemFont(ofSize: 12)
        txtMsg.layer.cornerRadius = 10
        txtMsg.returnKeyType = UIReturnKeyType.send
        
        //Set the delegate so you can respond to user input
        txtMsg.delegate=self
        sendView.addSubview(txtMsg)
        self.view.addSubview(sendView)
        
        let sendButton = UIButton(frame:CGRect(x: screenWidth - 80,y: 10,width: 72,height: 36))
        sendButton.backgroundColor=UIColor.red
        sendButton.alpha = 0.7
        sendButton.addTarget(self, action:#selector(ChatViewController.sendMessage) ,
                             for:UIControlEvents.touchUpInside)
        sendButton.layer.cornerRadius=10
        sendButton.setTitle("Send", for:UIControlState())
        sendView.addSubview(sendButton)
    }
    
    func textFieldShouldReturn(_ textField:UITextField) -> Bool
    {
        sendMessage()
        return true
    }
    
    func sendMessage()
    {
        //composing=false
        let sender = txtMsg
        let thisChat =  MessageItem(body:sender!.text! as NSString, user:me, date:Date(), mtype:ChatType.mine)
        let thatChat =  MessageItem(body:"you say：\(sender!.text!)" as NSString, user:you, date:Date(), mtype:ChatType.someone)
        
        Chats.add(thisChat)
        Chats.add(thatChat)
        self.tableView.chatDataSource = self
        self.tableView.reloadData()
        
        //self.showTableView()
        sender?.resignFirstResponder()
        sender?.text = ""
    }
    
    func setupChatTable()
    {
        self.tableView = TableView(frame:CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height - 76), style: .plain)
        
        //reusable tableviewcell
        self.tableView!.register(TableViewCell.self, forCellReuseIdentifier: "ChatCell")
        me = UserInfo(name:"Ray" ,logo:("man-1"))
        you  = UserInfo(name:"Jane", logo:("girl-6"))
        
        let zero =  MessageItem(body:"hello", user:you,  date:Date(timeIntervalSinceNow:-90096400), mtype:.someone)
        
        let zero1 =  MessageItem(body:"hello", user:me,  date:Date(timeIntervalSinceNow:-90086400), mtype:.mine)
        
        let first =  MessageItem(body:"How's going?", user:me,  date:Date(timeIntervalSinceNow:-90000600), mtype:.mine)
        
        let second =  MessageItem(image:UIImage(named:"sz.png")!,user:me, date:Date(timeIntervalSinceNow:-90000290), mtype:.mine)
        
        let third =  MessageItem(body:"wow, it's so brethtaking! ",user:you, date:Date(timeIntervalSinceNow:-90000060), mtype:.someone)
        
        let fouth =  MessageItem(body:"YES,we can go together",user:me, date:Date(timeIntervalSinceNow:-90000020), mtype:.mine)
        
        let fifth =  MessageItem(body:"That's great~",user:you, date:Date(timeIntervalSinceNow:0), mtype:.someone)
        
        
        Chats = NSMutableArray()
        Chats.addObjects(from: [first,second, third, fouth, fifth, zero, zero1])
        
        //set the chatDataSource
        self.tableView.chatDataSource = self
        
        //call the reloadData, this is actually calling your override method
        self.tableView.reloadData()
        
        self.view.addSubview(self.tableView)
    }
    
    func rowsForChatTable(_ tableView:TableView) -> Int
    {
        return self.Chats.count
    }
    
    func chatTableView(_ tableView:TableView, dataForRow row:Int) -> MessageItem
    {
        return Chats[row] as! MessageItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
}
