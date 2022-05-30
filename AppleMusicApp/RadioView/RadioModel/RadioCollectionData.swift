//
//  RadioCollectionData.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import Foundation

class RadioCollectionData: ObservableObject {
    @Published var data = RadioCollectionModel.data
}
