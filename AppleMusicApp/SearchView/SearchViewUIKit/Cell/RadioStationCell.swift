//
//  RadioStationCell.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/29/22.
//

import UIKit

protocol SelfConfiguringCell {
    func set(with station: SearchCategoryModel)
}

class RadioStationCell: UICollectionViewCell, SelfConfiguringCell {

    static let identifier = "RadioStationCell"
    var imageView = RadioIamge(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLayout()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func configureLayout() {
        addSubview(imageView)
        imageView.backgroundColor = .red

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    func set(with station: SearchCategoryModel) {
        imageView.image = UIImage.init(named: station.image)
    }
}
