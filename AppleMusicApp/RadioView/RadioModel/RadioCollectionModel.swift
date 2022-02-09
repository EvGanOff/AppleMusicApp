//
//  RadioCollectionModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import Foundation

struct RadioCollectionModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
    let groupTitle: String
}

extension RadioCollectionModel {
    static let data = [
        RadioCollectionModel(image: "Hits", title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", subTitle: "Хиты на русском", groupTitle: "Станция Apple Music"),
        RadioCollectionModel(image: "Chill", title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", subTitle: "Чилаут", groupTitle: "Станция Apple Music"),
        RadioCollectionModel(image: "Pop", title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", subTitle: "Поп-музыка", groupTitle: "Станция Apple Music"),
        RadioCollectionModel(image: "Dance", title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", subTitle: "Танцевальная музыка", groupTitle: "Станция Apple Music"),
        RadioCollectionModel(image: "Hip-hop", title: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", subTitle: "Хип-хоп на русском", groupTitle: "Станция Apple Music"),
        
    ]
}

