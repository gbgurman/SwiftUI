//
//  NewsDetail.swift
//  Landmarks
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsDetail: View {
    var news: News //model
    var body: some View {
       VStack {
        //CircleImage(image: ImageStore.loadImage(name: "hiddenlake"))
        Image("turtlerock").resizable().frame(height:300)
                VStack(alignment: .leading) {
                    Text(news.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    HStack(alignment: .top) {
                        Text(news.description)
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.bottom, 20)
                    HStack {
                        Text("News by: ").foregroundColor(Color.gray)
                        Text(news.source).foregroundColor(Color.red)
                    }
                    .font(.subheadline)
                }
                .padding()

                Spacer()
            }
            .navigationBarTitle(Text(news.title), displayMode: .inline)
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetail(news: newsData[0])
    }
}
