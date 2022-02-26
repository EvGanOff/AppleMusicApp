//
//  CategorySubView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct CategorySubView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                PlaylistView()
                Spacer()
                TracksView()
            }
        }
        .navigationTitle(Text("Пространственное аудио"))
    }
}

struct CategorySubView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySubView()
    }
}
