//
//  CircleImage.swift
//  Landmarks
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Pink Hat Apps. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("alhambra")
        .resizable()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
