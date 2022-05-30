//
//  CategoriesCollectionSubViewModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import Foundation

struct PlaylistModel: Identifiable  {
    let id = UUID()
    let image: String
    let title: String
    let subTitle: String
    let groupTitle: String

}

extension PlaylistModel {
    static var data = [
        PlaylistModel(image: "IMG_1", title: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", subTitle: "Музыка репера в новом звучании", groupTitle: ""),
        PlaylistModel(image: "IMG_2", title: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", subTitle: "4 Your Eyez Only", groupTitle: "J.Cole"),
        PlaylistModel(image: "IMG_3", title: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", subTitle: "Revenge of the Dreamers II", groupTitle: "Dreamville & J.Cole"),
        PlaylistModel(image: "IMG_4", title: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", subTitle: "Revenge of the Dreamers III: Director's", groupTitle: "Dreamville & J.Cole")
    ]
}
