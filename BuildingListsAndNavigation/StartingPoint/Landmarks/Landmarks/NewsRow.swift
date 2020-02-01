//
//  NewsRow.swift
//  Landmarks
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsRow: View {
    var news: News
   
    var body: some View {
         HStack {
            Image("turtlerock")
                .resizable()
                .frame(width: 50, height: 50)
            Text(news.title)
            Spacer()
            Text(news.source)
         }
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsRow(news: newsData[0])//this is just for previewing
    }
}
