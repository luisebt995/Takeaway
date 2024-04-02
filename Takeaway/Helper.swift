//
//  Helper.swift
//  Takeaway
//
//  Created by Luis on 2/4/24.
//

import Foundation

enum Categories{
    case arabe
    case asiatica
    case hindu
    case mediterranea
}

func filterMenu(cuisine: Categories) -> [Food]{
    var filterArray = [Food]()
    
    foodInfo.forEach{ item in
        if (item.category == cuisine){
            filterArray.append(item)
        }
    }
    
    return filterArray
}
