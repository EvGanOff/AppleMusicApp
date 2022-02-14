//
//  CategorySubView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct CategorySubView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    PlaylistView()
                    Spacer()
                }
                .navigationBarTitle(Text("Радио"))
            }
        }
    }
}

struct CategorySubView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySubView()
    }
}
