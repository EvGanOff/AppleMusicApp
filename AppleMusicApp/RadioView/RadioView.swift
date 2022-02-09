//
//  RadioView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/3/22.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    RadioCollectionView()
                    Spacer()
                    RadioStationView()
                }
                .navigationBarTitle(Text("Радио"))
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
