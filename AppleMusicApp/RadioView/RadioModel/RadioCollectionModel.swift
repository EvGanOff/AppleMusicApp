//
//  RadioCollectionModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import Foundation
import SwiftUI

struct RadioCollectionModel: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    var image: Image { Image(imageName) }
    let title: String
    let subTitle: String
    let groupTitle: String
}

extension RadioCollectionModel {
    static let data = [
        RadioCollectionModel(
            imageName: "Hits",
            title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
            subTitle: "Хиты на русском",
            groupTitle: "Станция Apple Music"),
        RadioCollectionModel(
                        imageName: "Chill",
            title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
            subTitle: "Чилаут",
            groupTitle: "Станция Apple Music"),
        RadioCollectionModel(
                        imageName: "Pop",
            title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
            subTitle: "Поп-музыка",
            groupTitle: "Станция Apple Music"),
        RadioCollectionModel(
                        imageName: "Dance",
            title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
            subTitle: "Танцевальная музыка",
            groupTitle: "Станция Apple Music"),
        RadioCollectionModel(
                        imageName: "Hip-hop",
            title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
            subTitle: "Хип-хоп на русском",
            groupTitle: "Станция Apple Music"),
    ]
}

