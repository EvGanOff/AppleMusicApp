//
//  SearchViewListCell.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/28/22.
//

import SwiftUI

struct SearchViewListCell: View {

    let model: RadioStationModel
    
    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: Metric.vStackSpacing) {
            HStack {
                model.image
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: Metric.imageCornerRadius))
                    .frame(width: Metric.imageWidth, height: Metric.imageWidth)

                VStack(alignment: .leading) {
                    Text(model.title)
                        .font(.title3)

                    if let subTitle = model.groupTitle {
                        Text(subTitle)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.leading, Metric.padding)
            }

            Divider()
                .padding(.leading, Metric.imageWidth)
        }
    }
}

extension SearchViewListCell {
    struct Metric {
        static let imageWidth: CGFloat = 100
        static let imageCornerRadius: CGFloat = 10
        static let vStackSpacing: CGFloat = 8
        static let padding: CGFloat = 8
    }
}

struct SearchViewListCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewListCell(model: .data.first!)
    }
}
