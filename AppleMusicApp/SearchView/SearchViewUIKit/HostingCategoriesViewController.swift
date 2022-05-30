//
//  HostingCategoriesViewController.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/30/22.
//

import SwiftUI
import UIKit

final class HostingCategoriesViewController: UIHostingController<CategorySubView> {

    init() {
        super.init(rootView: CategorySubView())
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
