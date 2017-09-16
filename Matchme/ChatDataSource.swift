//
//  ChatDataSource.swift
//  Matchme
//
//  Created by 张睿 on 22/8/17.
//  Copyright © 2017 Wei Li. All rights reserved.
//

import Foundation


protocol ChatDataSource
{
    
    func rowsForChatTable( _ tableView:TableView) -> Int
    
    func chatTableView(_ tableView:TableView, dataForRow:Int)-> MessageItem
}
