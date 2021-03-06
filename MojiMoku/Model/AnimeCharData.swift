//
//  AnimeCharData.swift
//  MojiMoku
//
//  Created by Macbook Pro on 31/05/22.
//

import Foundation
import SwiftUI

struct AnimeCharData: Hashable, Codable, Identifiable {
    var id: Int
    var anime_id: Int
    var anime_image: String
    var character_image: String
    var origin: String
    var gender: String
    var name: String
    var desc: String
    var favorite: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case discover = "Discovery"
        case newly = "Newly Added"
        case popular = "Most Popular"
    }
}
