//
//  PlaylistViewData.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import Foundation

class PlaylistViewData: ObservableObject {
    @Published var data = PlaylistModel.data
}
