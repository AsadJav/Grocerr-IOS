//
//  ShopItemView.swift
//  GroceryApp
//
//  Created by AALA mac on 28/11/2023.
//

import SwiftUI

struct ShopItemView: View {
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.5)
                .frame(width: 170,height: 230)
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 80,height: 80)
                Text(title)
                Button {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format: "%.2f", price))")
                        .foregroundColor(.white)
                        .frame(width: 100,height: 40)
                        .background(Color.green)
                }

            }
        }
    }
}

struct ShopItemView_Previews: PreviewProvider {
    static var previews: some View {
        ShopItemView(imageName: "avocado", title: "Avocado", price: 4.00, color: .green, selfIndex: 0)
    }
}
