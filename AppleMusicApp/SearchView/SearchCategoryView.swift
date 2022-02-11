//
//  SearchCategoryView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/11/22.
//

import SwiftUI

struct SearchCategoryView: View {

    @ObservedObject var dataModel = SearchCategoryData()
    

    let columns: [GridItem] = Array(repeating: .init(), count: 2)

    var body: some View {
        VStack(alignment: .leading) {
            Text("Поиск по категориям")
                .font(.title3).bold()
            
            LazyVGrid(columns: columns, alignment: .center) {
                ForEach(dataModel.data, id: \.id) { data in
                    NavigationLink(destination: CategorySubView(), label: {
                        CategoriesView(image: data.image)
                    })
                }
            }
        }
    }
}

struct SearchCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoryView()
    }
}
