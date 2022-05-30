//
//  SearchViewUIKit.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/30/22.
//

import SwiftUI

struct SearchViewUIKit: View {
    @State private var searching = ""
    @State private var searchPlaceholder: String = "Ваша медиатека"
    @State private var selectedSearch = 1

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Divider()
                Text("Поиск по категориям")
                    .font(.title3).bold()
                    .padding(.leading)

                    .navigationTitle("Поиск")
                SearchUIKitVCRepresentable()
                    .padding(.all)
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
                }
            }
        }
    }
}

struct SearchViewUIKit_Preview: PreviewProvider {
    static var previews: some View {
        SearchViewUIKit()
    }
}
