//
//  SearchCategoryModel.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import Foundation

struct SearchCategoryModel: Identifiable {
    let id = UUID()
    let image: String

}

extension SearchCategoryModel {
    static var data = [
        SearchCategoryModel(image: "Audio"),
        SearchCategoryModel(image: "Romantic"),
        SearchCategoryModel(image: "Russian Pop"),
        SearchCategoryModel(image: "Russian Hip-hop"),
        SearchCategoryModel(image: "US Pop"),
        SearchCategoryModel(image: "US Hits"),
        SearchCategoryModel(image: "Good mood"),
        SearchCategoryModel(image: "Russian Hits")

    ]
}
