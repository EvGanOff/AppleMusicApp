//
//  TracksData.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import Foundation

class TracksData: ObservableObject {
    @Published var data = TracksModel.data
}
