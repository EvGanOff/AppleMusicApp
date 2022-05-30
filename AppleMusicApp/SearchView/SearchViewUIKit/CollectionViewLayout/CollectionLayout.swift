//
//  CollectionLayout.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/29/22.
//

import UIKit

struct UIHelper {

    static func createCollectionLayoutSection(count: Int) -> NSCollectionLayoutSection {
        let spacing: CGFloat = 4
        let bottomSpacing: CGFloat = 4
        let fractional: CGFloat = 1

        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(fractional),
                                              heightDimension: .fractionalHeight(fractional))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 0, leading: spacing, bottom: bottomSpacing, trailing: spacing)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                               heightDimension: .fractionalHeight(fractional))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 4)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging

        return section
    }
}
