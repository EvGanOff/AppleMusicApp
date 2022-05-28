//
//  SearchViewList.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/28/22.
//

import SwiftUI

struct SearchViewList: View {

    let title: String
    let tileList: [RadioStationModel]

    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .bold()

                LazyVGrid(columns: columns, alignment: .leading) {
                    ForEach(tileList, id: \.self) { data in
                        SearchViewListCell(model: data)
                    }
                }

                Spacer(minLength: 70)
            }
            .padding(.horizontal, 20)
        }
    }
}

struct SearchViewList_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewList(title: "Станции", tileList: RadioStationModel.data)
    }
}
