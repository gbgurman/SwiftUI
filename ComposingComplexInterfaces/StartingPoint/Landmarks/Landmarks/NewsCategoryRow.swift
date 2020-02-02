//
//  NewsCategoryRow.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsCategoryRow: View {
    var categoryName: String
       var items: [News]
    
    var body: some View {
       
        VStack(alignment: .leading) {
            //category title here
           Text(self.categoryName)
               .font(.headline)
               .padding(.leading, 15)
               .padding(.top, 5)
            
            //horizontal scroll here
            ScrollView(.horizontal, showsIndicators: false) {
                 HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { news in
                        NewsCategoryItem(news:news)
                        //Text(news.title)
                    }
                 }
            }
            .frame(height:185)
        }
    }
}

struct NewsCategoryItem: View {
    var news: News
    var body: some View {
        VStack(alignment: .leading) {
            Image("turtlerock")
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(news.title)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct NewsCategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsCategoryRow(categoryName: newsData[0].category.rawValue,
                        items: Array(newsData.prefix(4)))
    }
}
