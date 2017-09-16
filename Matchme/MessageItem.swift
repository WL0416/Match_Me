//
//  MessageItem.swift
//  Matchme
//
//  Created by Rui Zhang on 22/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import UIKit


enum ChatType {
    case mine
    case someone
}

class MessageItem {
    //user imformation
    var user:UserInfo
    //date
    var date:Date
    //information type
    var mtype:ChatType
    
    var view:UIView
    
    var insets:UIEdgeInsets
    
   
    class func getTextInsetsMine() -> UIEdgeInsets {
        return UIEdgeInsets(top:9, left:10, bottom:9, right:17)
    }
    
   
    class func getTextInsetsSomeone() -> UIEdgeInsets {
        return UIEdgeInsets(top:9, left:15, bottom:9, right:10)
    }
    
    class func getImageInsetsMine() -> UIEdgeInsets {
        return UIEdgeInsets(top:9, left:10, bottom:9, right:17)
    }
    
 
    class func getImageInsetsSomeone() -> UIEdgeInsets {
        return UIEdgeInsets(top:9, left:15, bottom:9, right:10)
    }
    
  
    convenience init(body:NSString, user:UserInfo, date:Date, mtype:ChatType) {
        let font =  UIFont.boldSystemFont(ofSize: 12)
        
        let width =  225, height = 10000.0
        
        let atts =  [NSFontAttributeName: font]
        
        let size =  body.boundingRect(with:
            CGSize(width: CGFloat(width), height: CGFloat(height)),
                                      options: .usesLineFragmentOrigin, attributes:atts, context:nil)
        
        let label =  UILabel(frame:CGRect(x: 0, y: 0, width: size.size.width,
                                          height: size.size.height))
        
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.text = (body.length != 0 ? body as String : "")
        label.font = font
        label.backgroundColor = UIColor.clear
        
        let insets:UIEdgeInsets =  (mtype == ChatType.mine ?
            MessageItem.getTextInsetsMine() : MessageItem.getTextInsetsSomeone())
        
        self.init(user:user, date:date, mtype:mtype, view:label, insets:insets)
    }
    
    
    
    init(user:UserInfo, date:Date, mtype:ChatType, view:UIView, insets:UIEdgeInsets) {
        self.view = view
        self.user = user
        self.date = date
        self.mtype = mtype
        self.insets = insets
    }
    
  
    convenience init(image:UIImage, user:UserInfo,  date:Date, mtype:ChatType) {
        var size = image.size
      
        if (size.width > 220) {
            size.height /= (size.width / 220);
            size.width = 220;
        }
        let imageView = UIImageView(frame:CGRect(x: 0, y: 0, width: size.width,
                                                 height: size.height))
        imageView.image = image
        imageView.layer.cornerRadius = 5.0
        imageView.layer.masksToBounds = true
        
        let insets:UIEdgeInsets =  (mtype == ChatType.mine ?
            MessageItem.getImageInsetsMine() : MessageItem.getImageInsetsSomeone())
        
        self.init(user:user,  date:date, mtype:mtype, view:imageView, insets:insets)
    }    
}
