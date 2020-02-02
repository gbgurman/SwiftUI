//
//  NewsCategoryHome.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsCategoryHome: View {
    var categories: [String: [News]] {
           Dictionary(
               grouping: newsData,
               by: { $0.category.rawValue }
           )
       }
    var featured: [News] {
           newsData.filter { $0.isFeatured }
       }
    var body: some View {
        NavigationView {
            List{
                //This will be a main slider
               FeaturedNews(news: featured)
                  .scaledToFill()
                  .frame(height: 200)
                  .clipped()
                .listRowInsets(EdgeInsets())//the image must fill its space
                ForEach(categories.keys.sorted(), id: \.self){key in
                     NewsCategoryRow(categoryName: key, items: self.categories[key]!)
                   // Text(key)
                }
                .listRowInsets(EdgeInsets()) //fill the space
            }
            .navigationBarTitle("Featured")
        }
    }
}
struct FeaturedNews:View{
    var news: [News]
    var body: some View{
        Image("turtlerock").resizable()
        
    }
}

struct NewsCategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        NewsCategoryHome()
    }
}
