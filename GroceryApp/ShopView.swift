//
//  ShopView.swift
//  GroceryApp
//
//  Created by AALA mac on 28/11/2023.
//

import SwiftUI

struct ShopView: View {
    @State var goToCart:Bool = false
    var items: [[Any]] = shopItems
    
    var body: some View {
        VStack(spacing: 5){
            VStack{
                Text("Good Morning,")
                    .frame(width: 320,alignment: .leading)
                    .foregroundColor(.gray)
                Text("Let's order fresh\nItems for you")
                    .font(.system(size: 38,weight: .semibold,design: .rounded))
                    .frame(width: 320,alignment: .leading)
                Spacer().frame(height: 25)
                Text("Fresh Items")
                    .frame(width: 320,alignment: .leading)
                    .foregroundColor(.gray)
            }.padding(20)
            ScrollView() {
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], spacing: 30){
                    ForEach(0..<items.count,id: \.self){item in
                        ShopItemView(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                    }
                    
                }
            }.padding(15)
        }.navigationDestination(isPresented: $goToCart, destination: {
            CartView()
        })
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    goToCart = true
                } label: {
                    Image(systemName: "cart")
                }

            }
        }
    }
}
struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
