//
//  RadioStationModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import Foundation

struct RadioStationModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let groupTitle: String
}

extension RadioStationModel {

    static let data = [
        RadioStationModel(
            image: "Anime station",
            title: "Музыка из аниме",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Borocco station",
            title: "Борокко",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Chill station",
            title: "Чилаут",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Classic rock station",
            title: "Классический рок",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Disney station",
            title: "Музыка Disney",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Electro station",
            title: "Электроника",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Hard-rock station",
            title: "Хард-рок",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Helloween",
            title: "Хеллоуин",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Hip-hop russian",
            title: "Русский Хип-хоп",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Indi station",
            title: "Инди",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Lullaby station",
            title: "Колыбельная",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Mexican station",
            title: "Мексиканская музыка",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Piano station",
            title: "Фортепьяно",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Pop station",
            title: "Русский поп",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "R&B station",
            title: "R&B хиты",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Russian rock station",
            title: "Русский рок",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Ruts-raggi station",
            title: "Рутс-регги",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Shanson station",
            title: "Шансон",
            groupTitle: "Станция Apple Music"),
        RadioStationModel(
            image: "Tehno station",
            title: "Техно",
            groupTitle: "Станция Apple Music")
    ]
}
