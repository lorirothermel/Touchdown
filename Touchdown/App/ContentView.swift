//
//  ContentView.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
        
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geo in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil  {
                    VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.top, geo.safeAreaInsets.top)
                            .padding(.top)
                            .padding(.bottom)
                            .background(.white)
                            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 0) {
                                FeaturedTabView()
//                                  .frame(minHeight: 150, idealHeight: 250, maxHeight: .infinity, alignment: .center)
                                    .frame(height: UIScreen.main.bounds.width / 1.475)
                                    .padding(.vertical, 20)
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout, spacing: 15) {
                                    ForEach(products) { product in
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                withAnimation(.easeOut) {
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                }  // withAnimation
                                            }  // .onTapGesture
                                    }  // ForEach
                                }  // LazyVGrid
                                .padding(15)
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                                
                            }  // VStack
                        }  // ScrollView
                        
                        
                        
                    }  // VStack
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                }  // if
                
            }  // ZStack
            .ignoresSafeArea(.all, edges: .top)
        }  // GeometryReader
        
    }  // some View
}  // ContentView


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
