//
//  SearchUIKitViewToSwiftUI.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/30/22.
//

import SwiftUI
import UIKit

struct SearchUIKitVCRepresentable: UIViewControllerRepresentable  {
    func makeUIViewController(context: Context) -> UIViewController {
        return SearchVC()

    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}

struct SearchKitView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUIKitVCRepresentable()
    }
}
