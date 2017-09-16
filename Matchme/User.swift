//
//  User.swift
//  Matchme
//
//  Created by Wei Li on 8/17/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import Foundation

class User
{
    var username:String
    var password:String
    var name:String
    var gender:String
    var age:Int
    
    private init(_ username:String, _ password:String)
    {
        self.username = username
        self.password = password
        name = "Liwei"
        gender = "Male"
        age = 30
    }
    
    func getName(username: String) -> String
    {
        return username
    }
}
