//
//  Basket.swift
//  iosApp
//
//  Created by Admin on 14.03.2023.
//  Copyright © 2023 orgName. All rights reserved.
//

import Foundation

struct Item: Identifiable, Codable {
    var id: Int
    var title: String
    var description: String
    var fav: Bool
 
    static var sampleItems: [Item] {
        var tempList = [Item]()
        for i in 1...20 {
            let id = i
            let title = "Title \(i)"
            let desctr = "This is a sample description"
            
            tempList.append(Item(id: id, title: title, description: desctr, fav: false))
        
        }
        return tempList
    }
}
