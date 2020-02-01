//
//  ContentView.swift
//  Landmarks
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Pink Hat Apps. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        //The view is composed of three mail components:
        //a MapView, an Image and a VStack of Texts
        VStack {
            MapView() //show my custom map view here
                .edgesIgnoringSafeArea(.top) //map can go beyond the safe zone
                .frame(height: 300) //size of the view
            
            CircleImage() //show my custom view here
                .frame(height: 200)
                .offset(y: -100) //pull up onto the map
                .padding(.bottom, -100) //pull the vstack closer to the image view
           
            VStack(alignment: .leading) { //make a vertical layout
                //Image("Alhambra").resizable()
                Text("The Alhambra Palace")
                    .font(.title)
                HStack(alignment: .top) { //make a horizontal layout
                    Text("15 likes")
                        .font(.subheadline)
                    Spacer() //aligns everything to the sides horizontally
                    Text("Spain")
                        .font(.subheadline)
                }
                 Divider() //draws a line
            }
            .padding() //pull the vstack inside
            Spacer() //aligns all views to the sides vertically
        }
            
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
