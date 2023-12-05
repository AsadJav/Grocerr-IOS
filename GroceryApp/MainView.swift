//
//  MainView.swift
//  GroceryApp
//
//  Created by AALA mac on 28/11/2023.
//

import SwiftUI

struct MainView: View {
    @State var goToShop:Bool = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 50){
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,height: 300)
                Text("We deliver\n grocery at your\n doorstep")
                    .font(.system(size: 42,weight: .bold,design: .rounded))
                    .multilineTextAlignment(.center)
                Text("Grocerr gives you fresh vegetables and fruits.\nOrder fresh at Grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button(){
                    goToShop = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                }
                .frame(width: 200,height: 70)
                    .foregroundColor(.purple)
            }
            .navigationDestination(isPresented: $goToShop) {
                ShopView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
