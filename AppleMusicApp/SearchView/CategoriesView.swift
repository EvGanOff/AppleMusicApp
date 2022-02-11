//
//  CategoriesView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct CategoriesView: View {
    var image: String

    var body: some View {
        ZStack(alignment: .leading) {
            Image(self.image)
                .resizable()
                .frame(minWidth: 180, minHeight: 150)
                .scaledToFit()
                .cornerRadius(12)
        }
    }
}

