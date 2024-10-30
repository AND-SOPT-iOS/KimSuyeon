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
    
    var paidData = FinancePaidModel.mockPaidData()
    
    var freeData = FinanceFreeModel.mockFreeData()
    
    override func loadView() {
        super.loadView()
        
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register()
        setDelegate()
    }
    
    func setNavigationBar() {
        self.navigationItem.title = "금융"
        self.navigationController?.navigationBar.prefersLargeTitles = false
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
            FinancePaidCollectionViewCell.self,
            forCellWithReuseIdentifier: "FinancePaidCollectionViewCell"
        )
        
        rootView.collectionView.register(
            FinanceFreeCollectionViewCell.self,
            forCellWithReuseIdentifier: "FinanceFreeCollectionViewCell"
        )
        
        rootView.collectionView.register(
            FinanceAdHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: FinanceAdHeaderView.identifier
        )
        
        rootView.collectionView.register(
            FinanceDefaultHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: FinanceDefaultHeaderView.identifier
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
        default:
            return 9
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
        case 2:
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: FinancePaidCollectionViewCell.identifier,
                for: indexPath
            ) as? FinancePaidCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(paidData[indexPath.item])
            return cell
        case 3:
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: FinanceFreeCollectionViewCell.identifier,
                for: indexPath
            ) as? FinanceFreeCollectionViewCell else { return UICollectionViewCell() }
            cell.dataBind(freeData[indexPath.item])
            return cell
        default:
            return FinanceAdCollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            switch indexPath.section {
            case 1:
                guard let header = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: FinanceAdHeaderView.identifier,
                    for: indexPath
                ) as? FinanceAdHeaderView else { return UICollectionReusableView() }
                header.configureHeader(title: "필수 금융 앱", subtitle: "App Store 에디터가 직접 골랐습니다")
                return header
            case 2:
                guard let header = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: FinanceDefaultHeaderView.identifier,
                    for: indexPath
                ) as? FinanceDefaultHeaderView else { return UICollectionReusableView() }
                header.configureHeader(title: "유료 순위")
                header.didTapTotalLabel = { [weak self] in
                    let viewController = FinancePopularChartViewController()
                    self?.navigationController?.pushViewController(viewController, animated: true)
                }
                return header
            case 3:
                guard let header = collectionView.dequeueReusableSupplementaryView(
                    ofKind: kind,
                    withReuseIdentifier: FinanceDefaultHeaderView.identifier,
                    for: indexPath
                ) as? FinanceDefaultHeaderView else { return UICollectionReusableView() }
                header.configureHeader(title: "무료 순위")
                header.didTapTotalLabel = { [weak self] in
                    let viewController = FinancePopularChartViewController()
                    self?.navigationController?.pushViewController(viewController, animated: true)
                }
                return header
            default:
                break
            }
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        switch section {
        case 1:
            return CGSize(width: UIScreen.main.bounds.width, height: 60)
        default:
            return CGSize(width: UIScreen.main.bounds.width, height: 36)
        }
    }
}
