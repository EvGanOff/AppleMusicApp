//
//  RadioCollectionView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import SwiftUI

struct RadioCollectionView: View {

    @ObservedObject var dataModel = RadioCollectionData()

    var row = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, spacing: Metric.lazyHGridSpacing) {
                ForEach(dataModel.data, id: \.id) { data in
                    VStack(alignment: .leading) {
                        Divider()

                        Text(data.title)
                            .foregroundColor(.gray)
                            .font(.system(size: Metric.textFontSizeTitleLabel))
                        Text(data.subTitle)
                            .font(.system(size: Metric.textFontSizeSubTitleLabel))

                        Text(data.groupTitle)
                            .font(.system(size: Metric.textFontSizeGroupTitleLabel))
                            .foregroundColor(.gray)
                        Image(data.image)
                            .resizable()
                            .frame(width: Metric.imageFrameWidth, height: Metric.imageFrameHeight)
                            .cornerRadius(Metric.imageCornerRadius)

                        Divider()
                            .padding(Metric.imageDividerPadding)
                    }
                }
            }
        }
        .padding(Metric.lazyVGridSpacing)
    }
    struct Metric {
        static let lazyHGridSpacing: CGFloat = 8
        static let textFontSizeTitleLabel: CGFloat = 11
        static let textFontSizeSubTitleLabel: CGFloat = 22
        static let textFontSizeGroupTitleLabel: CGFloat = 22
        static let lazyVGridSpacing: CGFloat = 10

        static let imageFrameWidth: CGFloat = 300
        static let imageFrameHeight: CGFloat = 200
        static let imageCornerRadius: CGFloat = 8

        static let imageDividerPadding: CGFloat = 8

    }
}

struct RadioCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        RadioCollectionView()
    }
}

