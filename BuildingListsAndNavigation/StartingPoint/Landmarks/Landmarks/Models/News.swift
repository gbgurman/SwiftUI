//
//  News.swift
//  The model for an individual news.
//
//  Created by trin on 1.02.2020.
//  Copyright © 2020 Pink Hat Apps. All rights reserved.

import SwiftUI
import CoreLocation

/*
 link: String,
    title: String,
    description: String,
    pubDate: String,
    image: String,
    source: String
 
    "_id":"5dc1978bc11c4c0d27c7d7f6",
     "source":"cnnturk",
     "title":"Y¸ksek ›sti˛are Kurulu, Erdoan ba˛kanl˝˝nda topland˝",
     "description":"Cumhurba˛kanl˝˝ Y¸ksek ›sti˛are Kurulu (Y›K), Cumhurba˛kan˝ Recep Tayyip Erdoan ba˛kanl˝˝nda topland˝.",
     "image":"https://i2.cnnturk.com/i/cnnturk/75/720x490/5dc196c879da3e175cd9b4eb",
     "link":"https://www.cnnturk.com/turkiye/yuksek-istisare-kurulu-erdogan-baskanliginda-toplandi",
     "pubDate":"Tue, 05 Nov 2019 18:35:00 GMT","__v":0
     
 },
 */

struct News: Hashable, Codable {
    var _id: String
    var source: String
    var title: String
    var description: String
    var image: String
    var link: String
    var pubDate: String
    var __v: Int
}
