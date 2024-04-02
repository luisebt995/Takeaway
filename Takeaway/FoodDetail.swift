//
//  FoodDetail.swift
//  Takeaway
//
//  Created by Luis on 2/4/24.
//

import SwiftUI

struct FoodDetail: View {
    let comida : Food
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(comida.title)
                    .font(.headline)
                    .padding(.top,10)
                Text("\(comida.price, specifier: "%2.2f")€")
                    .font(.caption)
            }
            Button(action: {print("Si se pudo")}){
                Text("PEDIDO")
                    .foregroundColor(.white)
            }
            .frame(width: 80, height: 50)
            .background(Color.purple)
            .cornerRadius(10.0)
        }
        .padding(20)
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(comida: foodInfo[0])
    }
}
