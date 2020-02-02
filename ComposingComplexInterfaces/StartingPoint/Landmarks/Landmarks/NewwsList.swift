//
//  NewwsList.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct NewwsList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.news) { news in
                    if !self.userData.showFavoritesOnly || news.isFavorite {
                        NavigationLink(
                            destination: NewsDetail(news: news)
                                .environmentObject(self.userData)
                        ) {
                            NewsRow(news: news)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("News"))
        }
    }
}

struct NewwsList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            NewwsList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
