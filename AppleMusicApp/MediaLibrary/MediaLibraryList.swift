//
//  MediaLibraryList.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/7/22.
//

import SwiftUI

struct MediaLibraryList: View {

    @State private var isEditMode = EditMode.active
    @State private var selection = Set<String>()

    var body: some View {
        VStack {
            List(selection: $selection) {
                ForEach(LibraryModel.data, id: \.self) { (item) in
                    HStack {
                        Image(systemName: "\(item.image)")
                            .frame(width: Metric.width, height: Metric.height)
                            .foregroundColor(Color.red)
                        Text(item.title)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, Metric.textPadding)
                    }
                }
                .onMove { (IndexSet, Index) in
                    LibraryModel.data.move(fromOffsets: IndexSet, toOffset: Index)
                }
            }
            .environment(\.editMode, $isEditMode)
            .listStyle(.plain)
            .accentColor(.red)
        }
    }

    // MARK: - Metric -

    struct Metric {
        static let width: CGFloat = 25
        static let height: CGFloat = 25
        static let textPadding: CGFloat = 10
    }
}

struct MediaLibraryList_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibraryList()
    }
}
