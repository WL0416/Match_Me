//
//  TableViewCell.swift
//  Matchme
//
//  Created by Rui Zhang on 22/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell:UITableViewCell {
    
    var customView:UIView!

    var bubbleImage:UIImageView!
   
    var avatarImage:UIImageView!
    
    var msgItem:MessageItem!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //- (void) setupInternalData
    init(data:MessageItem, reuseIdentifier cellId:String) {
        self.msgItem = data
        super.init(style: UITableViewCellStyle.default, reuseIdentifier:cellId)
        rebuildUserInterface()
    }
    
    func rebuildUserInterface() {
        
        self.selectionStyle = UITableViewCellSelectionStyle.none
        if (self.bubbleImage == nil)
        {
            self.bubbleImage = UIImageView()
            self.addSubview(self.bubbleImage)
        }
        
        let type =  self.msgItem.mtype
        let width =  self.msgItem.view.frame.size.width
        let height =  self.msgItem.view.frame.size.height
        
        var x =  (type == ChatType.someone) ? 0 : self.frame.size.width - width -
            self.msgItem.insets.left - self.msgItem.insets.right
        
        var y:CGFloat =  0
    
        if (self.msgItem.user.username != "")
        {
            
            let thisUser =  self.msgItem.user
            //self.avatarImage.removeFromSuperview()
            
            let imageName = thisUser.avatar != "" ? thisUser.avatar : "noAvatar.png"
            self.avatarImage = UIImageView(image:UIImage(named:imageName))
            
            self.avatarImage.layer.cornerRadius = 9.0
            self.avatarImage.layer.masksToBounds = true
            self.avatarImage.layer.borderColor = UIColor(white:0.0 ,alpha:0.2).cgColor
            self.avatarImage.layer.borderWidth = 1.0
            
           
            let avatarX =  (type == ChatType.someone) ? 2 : self.frame.size.width - 52
            
           
            let avatarY:CGFloat =  0
            //set the frame correctly
            self.avatarImage.frame = CGRect(x: avatarX, y: avatarY, width: 50, height: 50)
            self.addSubview(self.avatarImage)
            
           
            let delta =  (50 - (self.msgItem.insets.top
                + self.msgItem.insets.bottom + self.msgItem.view.frame.size.height))/2
            if (delta > 0) {
                y = delta
            }
            if (type == ChatType.someone) {
                x += 54
            }
            if (type == ChatType.mine) {
                x -= 54
            }
        }
        
        self.customView = self.msgItem.view
        self.customView.frame = CGRect(x: x + self.msgItem.insets.left,
                                       y: y + self.msgItem.insets.top, width: width, height: height)
        
        self.addSubview(self.customView)
        
        
        if (type == ChatType.someone)
        {
            self.bubbleImage.image = UIImage(named:("yoububblew.png"))!
                .stretchableImage(withLeftCapWidth: 21,topCapHeight:25)
            
        }
        else {
            self.bubbleImage.image = UIImage(named:"redbu.png")!
                .stretchableImage(withLeftCapWidth: 15, topCapHeight:25)
        }
        self.bubbleImage.frame = CGRect(x: x, y: y,
                                        width: width + self.msgItem.insets.left + self.msgItem.insets.right,
                                        height: height + self.msgItem.insets.top + self.msgItem.insets.bottom)
    }
    
  
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame = newFrame
            frame.size.width = UIScreen.main.bounds.width
            super.frame = frame
        }
    }
}
