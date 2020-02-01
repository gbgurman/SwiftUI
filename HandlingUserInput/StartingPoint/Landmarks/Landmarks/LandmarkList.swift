/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false //use this to keep users choice
    
    var body: some View {
        NavigationView {
            
            List
            {
                Toggle(isOn: $showFavoritesOnly) { //binding to state variable
                    Text("Favorites only") //this is the switch title
                }
                ForEach(landmarkData){ landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
