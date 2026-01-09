//
//  ItemModel.swift
//  TODOLIST
//
//  Created by zubair ahmed on 19/05/25.
//

import Foundation

struct ItemModel:Identifiable,Codable{
    var id:String = UUID().uuidString
    let title:String
    let isCompleted:Bool
}
