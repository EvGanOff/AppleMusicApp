//
//  SearchView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/3/22.
//

import SwiftUI

struct SearchView: View {

    @State private var dataModel = RadioStationModel.data
    @State private var search = ""

    var columns = [
        GridItem(.flexible())
        ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    if search.isEmpty {
                        SearchCategoryView()
                    } else {
                        SearchResultView(searchText: $search)
                    }
                }
            }
            .navigationBarTitle(Text("Поиск"))
            .navigationBarTitleDisplayMode(.large)
        }
        .searchable(text: $search,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "Ваша медиатека")
    }
}

extension SearchView {

    enum Metric {

        static let searchFrameWidth: CGFloat = 370
        static let searchFrameHeight: CGFloat = 20

        static let imageFrameWidth: CGFloat = 190
        static let imageFrameHeight: CGFloat = 140
        static let imageCornerRadius: CGFloat = 10

        static let textFrameWidth: CGFloat = 170
        static let textFrameHeight: CGFloat = 120
        static let textPaddingBottom: CGFloat = 5
        static let textPaddingTop: CGFloat = -5

        static let vStackSpacing: CGFloat = 18
    }
}

struct SearchView_Previews: PreviewProvider {

    static var previews: some View {
        SearchView()
    }
}
