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
    let groupTitle: String

}

extension PlaylistModel {
    static var data = [
        PlaylistModel(image: "IMG_1", title: "sdvsv", groupTitle: "sdvsdv"),
        PlaylistModel(image: "IMG_2", title: "dvsdv", groupTitle: "sfvsv"),
        PlaylistModel(image: "IMG_3", title: "sdvs", groupTitle: "sfvdfv"),
        PlaylistModel(image: "IMG_4", title: "sassdvs", groupTitle: "sfvdsdvdvfv")
    ]
}
