//
//  LandmarkList.swift
//  Landmarks
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /*
        //Make a static list of rows
        List{
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }*/
        
        /*
        //Do this if Model is not Identifiable
        List(landmarkData, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }*/
        NavigationView{
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
        .navigationBarTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //preview in a single device
        //LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone SE"))
       
        //preview in multiple devices
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self){deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
