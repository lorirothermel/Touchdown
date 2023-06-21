//
//  SectionView.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/21/23.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    
    
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }  // VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }  // some View
}  // SectionView


struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
