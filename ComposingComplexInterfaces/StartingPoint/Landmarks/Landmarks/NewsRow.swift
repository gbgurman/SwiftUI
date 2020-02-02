//
//  NewsRow.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsRow: View {
    var news: News
    var body: some View {
        HStack {
            Text(news.source).foregroundColor(Color.gray).font(.footnote)
           Text(news.title)
           Spacer()
           if news.isFavorite {
               Image(systemName: "star.fill")
                   .imageScale(.medium)
                   .foregroundColor(.yellow)
           }
        }
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewsRow(news: newsData[0])
            NewsRow(news: newsData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
