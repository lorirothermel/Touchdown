//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/21/23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading, spacing: 5) {
                
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
//                    .padding(.top, geo.safeAreaInsets.top)
                    .padding(.top, 25)
                
                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                
                // DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                
                // DETAIL BOTTOM PART
                VStack(alignment: .center, spacing: 0) {
                    // RATINGS + SIZES
                    RatingsSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    
                    // DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }  // ScrollView
                    
                    // QUANTITY + FAVORITE
                    QuantityFavoriteDetailView()
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                    
                    // ADD TO CART
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                    
                }  // VStack
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )  // .background
                
                
                
                
            }  // VStack
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                      green: shop.selectedProduct?.green ?? sampleProduct.green,
                      blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                     ).ignoresSafeArea(.all, edges: .all)
            )  // .background
        }  // GeometryReader
        
    }  // some View
}  // ProductDetailView


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
