//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/20/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }  // ForEach
        }  // TabView
        .tabViewStyle(.page)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 14 Pro")
            .background(.gray)
    }
}
