//
//  NewsList.swift
//  Landmarks
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsList: View {
    var body: some View {
        NavigationView{
            List(newsData, id: \._id) { news in
                       NavigationLink(destination: NewsDetail(news: news)){
                           NewsRow(news: news)
                       }
            }
            .navigationBarTitle("News")
        }
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
