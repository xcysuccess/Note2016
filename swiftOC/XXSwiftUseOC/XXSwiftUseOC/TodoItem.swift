//
//  TodoItem.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 8/4/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import Foundation

class TodoItemOC :NSObject{
    let uuid: String
    var title: String
    
    init(uuid: String, title: String) {
        self.uuid = uuid
        self.title = title
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        return true;
    }
}


class TodoItem {
    let uuid: String
    var title: String
    
    init(uuid: String, title: String) {
        self.uuid = uuid
        self.title = title
    }
}

extension TodoItem: Equatable {
    
}

func ==(lhs: TodoItem, rhs: TodoItem) -> Bool {
    return lhs.uuid == rhs.uuid
}
http://swifter.tips/equal/
