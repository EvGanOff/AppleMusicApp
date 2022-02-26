//
//  TabBar.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/3/22.
//

import SwiftUI

struct TabBar: View {

    @State var isShowed = false
    @Namespace var animation

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                MediaLibraryView()
                    .tabItem {
                        Image(systemName: "rectangle.stack.badge.play")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(Color.red)

            PlayerView(isShowed: $isShowed)
                .padding(.bottom, Metric.playerViewPaddingBottom)
        }
    }

    // MARK: - Metric

    struct Metric {
        static let playerViewPaddingBottom: CGFloat = 49
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            TabBar().preferredColorScheme($0)
        }
    }
}
