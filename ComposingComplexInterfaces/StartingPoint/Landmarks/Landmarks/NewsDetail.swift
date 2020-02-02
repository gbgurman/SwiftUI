//
//  NewsDetail.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewsDetail: View {
     @EnvironmentObject var userData: UserData
    var news: News
    
    var newsIndex: Int {
        userData.news.firstIndex(where: { $0.id == news.id })!
    }
    
    var body: some View {
        VStack {
           VStack(alignment: .leading) {
                HStack {
                    Text(news.title)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.news[self.newsIndex]
                            .isFavorite.toggle()
                    }) {
                        if self.userData.news[self.newsIndex]
                            .isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                HStack(alignment: .top) {
                    Text(news.description)
                        .font(.subheadline)
                    Spacer()
                    Text(news.source)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NewsDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
               return NewsDetail(news: userData.news[0])
                   .environmentObject(userData)
    }
}
