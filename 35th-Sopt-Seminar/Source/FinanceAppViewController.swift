//
//  FinanceAppViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit
import SnapKit
import Then

final class FinanceAppViewController: UIViewController {
    
    private let rootView = FinanceAppView()
    
    override func loadView() {
        super.loadView()
        
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register()
        setDelegate()
    }
    
    func register() {
        rootView.collectionView.register(
            FinanceAdCollectionViewCell.self,
            forCellWithReuseIdentifier: "FinanceAdCollectionViewCell"
        )
    }
    
    func setDelegate() {
        rootView.collectionView.delegate = self
        rootView.collectionView.dataSource = self
    }
}

extension FinanceAppViewController: UICollectionViewDelegate {
    
}

extension FinanceAppViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return rootView.adData.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: FinanceAdCollectionViewCell.identifier,
                for: indexPath
            ) as? FinanceAdCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(rootView.adData[indexPath.item])
            return cell
        default:
            // TODO: 섹션 구현 후 섹션에 맞게 변경
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: FinanceAdCollectionViewCell.identifier,
                for: indexPath
            ) as? FinanceAdCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(rootView.adData[indexPath.item])
            return cell
        }
    }
    
    
}
