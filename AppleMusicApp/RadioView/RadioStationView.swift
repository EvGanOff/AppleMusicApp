//
//  RadioStationView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/9/22.
//

import SwiftUI

struct RadioStationView: View {

    @ObservedObject var dataModel = RadioStationData()

    var columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns,
                      alignment: .leading,
                      spacing: Metric.spacingLazyVGrid) {
                
                Text("Станции")
                    .font(.title).bold()
                    .padding(.leading, Metric.textPadding)

                ForEach(dataModel.data, id: \.id) { data in
                    VStack(alignment: .leading) {
                        HStack {
                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.imageFrameWidthAndHeight, height: Metric.imageFrameWidthAndHeight)
                                .cornerRadius(Metric.imageCornerRadius)

                        .padding(.leading, Metric.hStackPadding)

                            VStack(alignment: .leading) {
                                Text(data.title)
                                    .foregroundColor(.gray)
                                    .padding(.trailing, Metric.textPadding)
                                    .font(.system(size: Metric.textFontSizeTitleLabel))
                                Text(data.groupTitle)
                                    .padding(.trailing, Metric.textPadding)
                                    .font(.system(size: Metric.textFontSizeGroupTitleLabel))
                            }
                        }
                    }

                    Divider()
                        .padding(Metric.vStackDividerPadding)
                }
            }
        }
    }

    // MARK: - Metric
    struct Metric {
        static let spacingLazyVGrid: CGFloat = 15
        static let textFontSizeTitleLabel: CGFloat = 16
        static let textFontSizeGroupTitleLabel: CGFloat = 18
        static let textPadding: CGFloat = 16

        static let hStackPadding: CGFloat = 8
        static let vStackDividerPadding: CGFloat = 2

        static let imageFrameWidthAndHeight: CGFloat = 120
        static let imageCornerRadius: CGFloat = 8
    }
}

struct RadioStationView_Previews: PreviewProvider {    
    static var previews: some View {
        RadioStationView()
    }
}
