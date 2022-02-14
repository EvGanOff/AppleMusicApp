//
//  TracksModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import Foundation

struct TracksModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let groupTitle: String
}


extension TracksModel {
    static var data = [
        TracksModel(image: "IMG_5", title: "", groupTitle: ""),
        TracksModel(image: "IMG_6", title: "", groupTitle: ""),
        TracksModel(image: "IMG_7", title: "", groupTitle: ""),
        TracksModel(image: "IMG_8", title: "", groupTitle: "")
    ]
}
