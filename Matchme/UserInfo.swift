//
//  UserInfo.swift
//  Matchme
//
//  Created by Rui Zhang on 22/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import Foundation

/*
 user imformation
 */
class UserInfo:NSObject
{
    var username:String = ""
    var avatar:String = ""
    
    init(name:String, logo:String)
    {
        self.username = name
        self.avatar = logo
    }
}
