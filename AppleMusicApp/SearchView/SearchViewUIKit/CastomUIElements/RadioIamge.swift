//
//  RadioIamge.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/30/22.
//

import Foundation
import UIKit

class RadioIamge: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        layer.cornerRadius = 6
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false

    }
}
