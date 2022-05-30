//
//  RadioStationModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import Foundation
import SwiftUI

struct RadioStationModel: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    var image: Image { Image(imageName) }
    let title: String
    let groupTitle: String
}

extension RadioStationModel {

    static let data = [
        RadioStationModel(
            imageName: "Anime station",
            title: "Музыка из аниме",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Borocco station",
            title: "Борокко",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Chill station",
            title: "Чилаут",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Classic rock station",
            title: "Классический рок",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Disney station",
            title: "Музыка Disney",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Electro station",
            title: "Электроника",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Hard-rock station",
            title: "Хард-рок",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Helloween",
            title: "Хеллоуин",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Hip-hop russian",
            title: "Русский Хип-хоп",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Indi station",
            title: "Инди",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Lullaby station",
            title: "Колыбельная",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Mexican station",
            title: "Мексиканская музыка",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Piano station",
            title: "Фортепьяно",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Pop station",
            title: "Русский поп",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "R&B station",
            title: "R&B хиты",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Russian rock station",
            title: "Русский рок",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Ruts-raggi station",
            title: "Рутс-регги",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Shanson station",
            title: "Шансон",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            imageName: "Tehno station",
            title: "Техно",
            groupTitle: "Станция Apple Music")
    ]
}
