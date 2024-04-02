//
//  Food.swift
//  Takeaway
//
//  Created by Luis on 2/4/24.
//

import Foundation

class Food : Identifiable{
    let title : String
    let price : Double
    let category: Categories
    let id : Int
    
    init(_title: String, _price: Double, _category: Categories, _id: Int) {
        self.title = _title
        self.price = _price
        self.category = _category
        self.id = _id
    }
}
