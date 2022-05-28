//
//  PlaylistView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct PlaylistView: View {

    @ObservedObject var dataModel = PlaylistViewData()

    var row = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, spacing: Metric.lazyHGridSpacing) {
                ForEach(dataModel.data, id: \.id) { data in
                    VStack(alignment: .leading) {

                        Text(data.title)
                            .foregroundColor(.gray)
                            .lineLimit(Metric.lineLimit)
                            .font(.system(size: Metric.textFontSizeTitleLabel))
                        Text(data.subTitle)
                            .font(.system(size: Metric.textFontSizeSubTitleLabel))
                            .lineLimit(Metric.lineLimit)
                        Text(data.groupTitle)
                            .font(.system(size: Metric.textFontSizeGroupTitleLabel))
                            .multilineTextAlignment(.leading)
                            .lineLimit(Metric.lineLimit)
                            .foregroundColor(.gray)
                        Image(data.image)
                            .resizable()
                            .frame(width: Metric.imageFrameWidth, height: Metric.imageFrameHeight)
                            .cornerRadius(Metric.imageCornerRadius)
                    }
                }
            }
            .padding(Metric.lazyVGridSpacing)

        }
    }

    // MARK: - Metric -
    
    struct Metric {
        static let lazyHGridSpacing: CGFloat = 8
        static let textFontSizeTitleLabel: CGFloat = 10
        static let textFontSizeSubTitleLabel: CGFloat = 19
        static let textFontSizeGroupTitleLabel: CGFloat = 18
        static let lazyVGridSpacing: CGFloat = 10

        static let imageFrameWidth: CGFloat = 350
        static let imageFrameHeight: CGFloat = 250
        static let imageCornerRadius: CGFloat = 8

        static let imageDividerPadding: CGFloat = 8

        static let lineLimit: Int = 1

    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
