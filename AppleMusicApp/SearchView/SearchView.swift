//
//  SearchView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/3/22.
//

import SwiftUI

struct SearchView: View {

    @State private var dataModel = RadioStationModel.data
    @State private var searching = ""
    @State private var searchPlaceholder: String = "Ваша медиатека"
    @State private var selectedSearch = 1

    var columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Divider()

                    LazyVGrid(columns: columns, alignment: .leading) {
                        SearchCategoryView()
                    }
                }

                Spacer(minLength: 70)
            }

            .padding(.horizontal, 0)
        }

        .searchable(text: $searching, placement: .navigationBarDrawer(displayMode: .always), prompt: self.$searchPlaceholder.wrappedValue) {
                    VStack(alignment: .leading) {
                        Picker("SearchSource", selection: $selectedSearch) {
                            Text("Apple Music").tag(0)
                            Text("Ваша медиатека").tag(1)
                        }
                        .onChange(of: selectedSearch) { tag in
                            if tag == 0 {
                                searchPlaceholder = "Артисты, песни, тексты и др."
                            } else {
                                searchPlaceholder = "Ваша медиатека"
                            }
                        }
                        .pickerStyle(.segmented)
                    }

            ScrollView {
                LazyVGrid(columns: columns, alignment: .leading) {
                    ForEach(dataModel, id: \.self) { data in
                        SearchViewListCell(model: data)
                            .searchCompletion(data.title)
                            .tint(.primary)
                    }
                }
            }
        }
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
    @State static var searchTextPreviews = ""
    static var previews: some View {
        SearchView()
    }
}
