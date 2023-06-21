//
//  Shop.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/21/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
