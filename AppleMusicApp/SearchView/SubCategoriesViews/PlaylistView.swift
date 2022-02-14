//
//  PlaylistView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct PlaylistView: View {

    @ObservedObject var dataModel = PlaylistViewData()

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }

    // MARK: - Metric
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

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
