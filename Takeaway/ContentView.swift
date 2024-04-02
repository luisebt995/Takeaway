//
//  ContentView.swift
//  Takeaway
//
//  Created by Luis on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                //Text("Comida 1")
                VistaTipoComida(imageName: "asiatica", foodName: "Asiatica")
                VistaTipoComida(imageName: "arabe", foodName: "Arabe")
                VistaTipoComida(imageName: "indu", foodName: "Indu")
                VistaTipoComida(imageName: "mediterranea", foodName: "Mediterranea")
            }.navigationTitle("Haga su pedido: ")
        }
    }
}

struct VistaTipoComida : View {
    
    var imageName : String
    var foodName : String
    
    var body: some View{
        HStack{
            Spacer()
            ZStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 100)
                    .clipped()
                    .cornerRadius(20.0)
            
                Text(foodName)
                    .font(.custom("Helvetica-Medium",size: 34))
                    .bold()
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.top,5)
        .padding(.bottom,5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
