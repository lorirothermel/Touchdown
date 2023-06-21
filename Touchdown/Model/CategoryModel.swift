//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Lori Rothermel on 6/21/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
