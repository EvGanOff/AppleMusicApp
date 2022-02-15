//
//  SearchView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/3/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    SearchBarView()
                    Spacer()
                    SearchCategoryView()
                    
                }
            }

            .navigationBarTitle(Text("Поиск"))
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
