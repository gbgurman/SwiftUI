//
//  Home.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            List{
                //This will be a main slider
                FeaturedLandmarks(landmarks: featured)
                   .scaledToFill()
                   .frame(height: 200)
                   .clipped()
                 .listRowInsets(EdgeInsets())//the image must fill its space
                
                ForEach(categories.keys.sorted(), id: \.self){key in
                     CategoryRow(categoryName: key, items: self.categories[key]!)
                    //Text(key)
                }
                 .listRowInsets(EdgeInsets()) //fill the space
            }
            .navigationBarTitle("Featured")
        }
       
    }
}

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}



struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
