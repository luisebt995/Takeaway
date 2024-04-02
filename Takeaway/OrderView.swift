//
//  OrderView.swift
//  Takeaway
//
//  Created by Luis on 2/4/24.
//

import SwiftUI

struct OrderView: View {
    let cuisineType : Categories
    
    var body: some View {
        List(filterMenu(cuisine: cuisineType)){
            filterFood in FoodDetail(comida: filterFood)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(cuisineType: .hindu)
    }
}
