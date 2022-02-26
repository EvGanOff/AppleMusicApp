//
//  SearchResult.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/21/22.
//

import SwiftUI

struct SearchResult: View {

    @ObservedObject var dataModel = RadioStationData()
    @Binding var searchText: String

    var columns  = [
        GridItem(.flexible())
    ]

    var body: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading,
            spacing: Metric.lazyVGridSpacing) {
                Text("Недавние поиски")
                    .font(.title).bold()

                ForEach(dataModel.data.filter({ "\($0.title)"
                    .contains(searchText) || searchText
                    .isEmpty }), id: \.id) { data in
                    VStack {
                        HStack {
                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.imageFrameWidth,
                                       height: Metric.imageFrameHeight)
                                .cornerRadius(Metric.imageCornerRadius)

                            VStack(alignment: .leading) {
                                Text(data.title)
                                    .font(.system(size: Metric.textFontSizeUpLabel))
                            }
                            Spacer(minLength: Metric.spacerMinLength)
                        }
                    }
                    Divider()
                }
            }
            .padding(.horizontal)
            .padding(.bottom, Metric.lazyVGridPaddingBottom)
    }
}

extension SearchResult {

    enum Metric {
        static let imageFrameWidth: CGFloat = 120
        static let imageFrameHeight: CGFloat = 120
        static let imageCornerRadius: CGFloat = 10

        static let lazyVGridSpacing: CGFloat = 15
        static let lazyVGridPaddingBottom: CGFloat = 50

        static let textFontSizeUpLabel: CGFloat = 22
        static let spacerMinLength: CGFloat = 0
    }
}

struct SearchResultAppleMusic_Previews: PreviewProvider {

    @State static var searchTextPreviews = ""

    static var previews: some View {
        SearchResult(searchText: $searchTextPreviews)
    }
}
