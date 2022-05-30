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
    let subTitle: String
}


extension TracksModel {
    static var data = [
        TracksModel(image: "IMG_5", title: "Создано для пространственного аудио", subTitle: "Apple Music"),
        TracksModel(image: "IMG_6", title: "Хиты в пространственном аудио", subTitle: "Apple Music"),
        TracksModel(image: "IMG_7", title: "Поп в пространственном аудио", subTitle: "Apple Music"),
        TracksModel(image: "IMG_8", title: "Хип-Хоп в пространственном аудио", subTitle: "Apple Music")
    ]
}
