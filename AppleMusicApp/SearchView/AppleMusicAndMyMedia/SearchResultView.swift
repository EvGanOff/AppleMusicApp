//
//  SearchResultView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/21/22.
//

import SwiftUI

struct SearchResultView: View {

    @State private var tapRight = false
    @State private var tapLeft = true
    @State private var buttonTap = true
    @Binding var searchText: String

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    RoundedRectangle(
                        cornerRadius: Metric.buttonBackgroundCornerRadius,
                        style: .continuous)
                        .frame(width: Metric.buttonBackgroundFrameWidth,
                               height: Metric.buttonBackgroundFrameHeight)
                        .foregroundColor(Color(.systemGray4))
                        .opacity(Metric.rectangleOpacity)
                    HStack {
                        Button {
                            tapRight = false
                            tapLeft.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(
                                    cornerRadius: Metric.buttonCornerRadius,
                                    style: .continuous)
                                    .frame(width: Metric.buttonFrameWidth,
                                           height: Metric.buttonFrameHeight)
                                    .foregroundColor(tapLeft ? Color(.systemPink) : Color(.systemGray2))

                                Text("Apple Music")
                                    .foregroundColor(
                                        (tapLeft ? Color.white : Color.black))
                            }
                        }

                        Button {
                            tapLeft = false
                            tapRight.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(
                                    cornerRadius: Metric.buttonCornerRadius,
                                    style: .continuous)
                                    .frame(width: Metric.buttonFrameWidth,
                                           height: Metric.buttonFrameHeight)
                                    .foregroundColor(tapRight ? Color(.systemPink) : Color(.systemGray2))

                                Text("Ваша медиатека")
                                    .foregroundColor(
                                        (tapRight ? Color.white : Color.black))
                            }
                        }
                    }
                }

                if buttonTap {
                    switch tapLeft {
                    case true:
                        VStack {
                            SearchResult(searchText: $searchText)
                        }
                    default:
                        SearchResult(searchText: $searchText)
                            .hidden()
                    }
                }
            }
        }
    }
    //MARK: - Metric
    struct Metric {
        static let buttonBackgroundFrameWidth: CGFloat = 360
        static let buttonBackgroundFrameHeight: CGFloat = 40
        static let buttonBackgroundCornerRadius: CGFloat = 10

        static let buttonFrameWidth: CGFloat = 167
        static let buttonFrameHeight: CGFloat = 27
        static let buttonCornerRadius: CGFloat = 5

        static let rectangleOpacity: CGFloat = 0.5
    }
}

struct SearchResultView_Previews: PreviewProvider {
    
    @State static var searchTextPreviews = ""

    static var previews: some View {
        SearchResultView(searchText: $searchTextPreviews)
    }
}
