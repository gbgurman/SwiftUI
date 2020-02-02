//
//  Home.swift
//  Landmarks
//
//  Created by trin on 2.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    //array of category names
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    //array of featured landmarks
    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    
    //bool to keep profile button state
    @State var showingProfile = false
    
    //profile button
    var profileButton: some View {
        Button(action: {
            self.showingProfile.toggle() //click to toggle profile button state
        }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }
    
    var body: some View {
        NavigationView {
            //List{ //BUG when Nav. links not directly inside List
            ScrollView(.vertical, showsIndicators: true) {
            VStack {
           
            
                //Featured section here
                FeaturedLandmarks(landmarks: featured)
                   .scaledToFill()
                   .frame(height: 200)
                   .clipped()
                 .listRowInsets(EdgeInsets())//the image must fill its space
                
                //Add a row for each category
                ForEach(categories.keys.sorted(), id: \.self){key in
                     CategoryRow(categoryName: key, items: self.categories[key]!)
                    //Text(key)
                }
                 .listRowInsets(EdgeInsets()) //fill the space
                
                //Add a link to all landmarks
                NavigationLink(destination: LandmarkList()) {
                    Text("See All")
                }
            }
            }
                
            .navigationBarTitle("Featured")
            .navigationBarItems(trailing: profileButton) //add profile button
            .sheet(isPresented: $showingProfile) { //modal is tied to the state
                Text("A modal window for user profile.") //show a modal whenever profile state becomes true
            }
            
        
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
