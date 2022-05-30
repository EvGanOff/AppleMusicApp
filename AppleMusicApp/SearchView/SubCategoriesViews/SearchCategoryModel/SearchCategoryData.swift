//
//  SearchCategoryData.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import Foundation

class SearchCategoryData: ObservableObject, Identifiable {
    @Published var data = SearchCategoryModel.data
}
