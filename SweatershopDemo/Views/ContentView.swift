//
//  ContentView.swift
//  SweatershopDemo
//
//  Created by Alandis Seals on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
    NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { product in
                        
                        ProductCard(product: product)
                            .environmentObject(CartManager())
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar(content: {
                
                NavigationLink(destination: {
                    CartView()
                        .environmentObject(CartManager())
                }, label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                })
                
            })
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
