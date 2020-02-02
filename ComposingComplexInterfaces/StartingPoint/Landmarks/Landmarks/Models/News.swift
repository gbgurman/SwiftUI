//
//  News.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import CoreLocation
struct News: Hashable,Codable,Identifiable{
    var id: String
    var title: String
    var description: String
    var source: String
    var isFavorite: Bool
    var isFeatured: Bool
    var category: NewsCategory
    
    enum NewsCategory: String, CaseIterable,Hashable,Codable{
        case breaking="Breaking"
        case science="Science"
        case local="Local"
    }
}
