//
//  TitleView.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/21/23.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }  // HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }  // some View
}  // TitleView


struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
