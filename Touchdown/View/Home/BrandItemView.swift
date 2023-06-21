//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/21/23.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand
    
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )  // .background
            
    }  // some View
}  // BrandItemView


struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
