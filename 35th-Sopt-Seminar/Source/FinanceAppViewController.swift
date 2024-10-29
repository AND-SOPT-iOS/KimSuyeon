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
    
    var adData = FinanceAdModel.mockAdData()
    
    var essentialData = FinanceEssentialModel.mockEssentialData()
    
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
        
        rootView.collectionView.register(
            FinanceEssentialCollectionViewCell.self,
            forCellWithReuseIdentifier: "FinanceEssentialCollectionViewCell"
        )
        
        rootView.collectionView.register(
            FinanceHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: FinanceHeaderView.identifier
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
            return adData.count
        case 1:
            return essentialData.count
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
            cell.dataBind(adData[indexPath.item])
            return cell
        case 1:
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: FinanceEssentialCollectionViewCell.identifier,
                for: indexPath
            ) as? FinanceEssentialCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(essentialData[indexPath.item])
            return cell
        default:
            // TODO: 섹션 구현 후 섹션에 맞게 변경
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: FinanceAdCollectionViewCell.identifier,
                for: indexPath
            ) as? FinanceAdCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(adData[indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            guard let header = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: FinanceHeaderView.identifier,
                for: indexPath
            ) as? FinanceHeaderView else { return UICollectionReusableView() }
            
            switch indexPath.section {
            case 1:
                header.configureHeader(title: "필수 금융 앱", subtitle: "App Store 에디터가 직접 골랐습니다")
            // TODO: 섹션 구현 후 섹션에 맞게 변경
            default:
                break
            }
            
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 60)
    }
}
