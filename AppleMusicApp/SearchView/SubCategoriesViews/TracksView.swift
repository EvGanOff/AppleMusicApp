//
//  TracksView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct TracksView: View {
    @ObservedObject var dataModel = TracksData()

    var row = [
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            Text("Избранные плейлисты")
                .font(
                    .system(size: Metric.textFontSizeSubTitleLabel,
                            weight: .bold,
                            design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, Metric.lazyVStackSpacing)

            ScrollView (.horizontal, showsIndicators: false) {
                LazyHGrid(rows: row, spacing: Metric.lazyHGridSpacing) {
                    ForEach(dataModel.data, id: \.id) { data in
                        VStack(alignment: .leading) {
                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.imageFrameWidth, height: Metric.imageFrameHeight)
                                .cornerRadius(Metric.imageCornerRadius)

                            Text(data.title)
                                .font(.system(size: Metric.textFontSizeSubTitleLabel))
                                .lineLimit(Metric.lineLimit)
                                .frame(width: Metric.textFrameWidth,
                                       height: Metric.textFrameHeight)
                                .padding(.leading, Metric.textPadding)
                            Text(data.subTitle)
                                .foregroundColor(.gray)
                                .lineLimit(Metric.lineLimit)
                                .font(.system(size: Metric.textFontSizeGroupTitleLabel))
                                .padding(.leading, Metric.textPadding)
                        }
                    }
                }

                .padding(.leading, Metric.lazyHGridSpacing)
            }
        }
    }

    struct Metric {
        static let lazyHGridSpacing: CGFloat = 8
        static let textFontSizeTitleLabel: CGFloat = 10
        static let textFontSizeSubTitleLabel: CGFloat = 19
        static let textFontSizeGroupTitleLabel: CGFloat = 18
        static let textFrameWidth: CGFloat = 150
        static let textFrameHeight: CGFloat = 25
        static let lazyVStackSpacing: CGFloat = 10

        static let imageFrameWidth: CGFloat = 150
        static let imageFrameHeight: CGFloat = 150
        static let imageCornerRadius: CGFloat = 8

        static let lineLimit: Int = 1
        static let textPadding: CGFloat = 0
    }
}

struct TracksView_Previews: PreviewProvider {
    static var previews: some View {
        TracksView()
    }
}
