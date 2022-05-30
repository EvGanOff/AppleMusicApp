//
//  SearchVC.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 5/29/22.
//

import UIKit

class SearchVC: UIViewController {

    enum Section {
        case main
    }

    var categories = SearchCategoryModel.data

    private var collectionDataSource: UICollectionViewDiffableDataSource<Section, SearchCategoryModel>?
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        configureDataSource()
        updateData()
        configureCollectionViewLayout()
    }

    private func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    private func configureCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createCollectionLayout())
        collectionView.register(RadioStationCell.self, forCellWithReuseIdentifier: RadioStationCell.identifier)
        collectionView.delegate = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
    }

    private func createCollectionLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            return UIHelper.createCollectionLayoutSection(count: self.categories.count)
        }
    }

    private func configureCollectionViewLayout() {

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
}

extension SearchVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        navigationController?.pushViewController(HostingCategoriesViewController(), animated: true)

    }
}

extension SearchVC {
    func configureDataSource() {
        collectionDataSource = UICollectionViewDiffableDataSource<Section, SearchCategoryModel>(collectionView: collectionView) { collectionView, indexPath, radioStation in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RadioStationCell.identifier, for: indexPath) as! RadioStationCell
            cell.set(with: radioStation)

            return cell
        }
    }

    func updateData() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, SearchCategoryModel>()
        snapshot.appendSections([.main])
        snapshot.appendItems(SearchCategoryModel.data, toSection: nil)

        DispatchQueue.main.async {
            self.collectionDataSource?.apply(snapshot, animatingDifferences: true)

        }
    }
}
