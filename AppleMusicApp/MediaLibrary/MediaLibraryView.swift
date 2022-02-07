//
//  MediaLibraryView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/3/22.
//

import SwiftUI


struct MediaLibraryView: View {

    @State private var categoryFilter = true

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {

            NavigationView {
                VStack {
                    if categoryFilter {
                        MediaLibraryInfo()
                    } else {
                        MediaLibraryList()
                    }
                }
                .navigationBarTitle(Text("Медиатека"))
                .navigationBarItems(trailing: Button(action: {
                    categoryFilter.toggle()
                }, label: {
                    if categoryFilter {
                        Text("Править").foregroundColor(.red)
                    } else {
                        Text("Готово").foregroundColor(.red)
                    }
                }))
            }
        }
    }
}

struct MediaLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibraryView()
    }
}
