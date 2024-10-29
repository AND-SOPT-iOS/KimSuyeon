//
//  FinanceCompositionalFactory.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit

enum FinanceCompositionalFactory {
    static func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout {
            (sectionNumber, _ environment) -> NSCollectionLayoutSection? in
            let section: NSCollectionLayoutSection
            switch sectionNumber {
            case 0:
                section = createAdSection()
            default:
                section = createDefaultSection()
            }
            return section
        }
    }
    
    /// 광고 섹션
    static func createAdSection() -> NSCollectionLayoutSection {
        var defaultEdgeInsets: NSDirectionalEdgeInsets {
            return NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        }
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(80)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = defaultEdgeInsets
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(240)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = defaultEdgeInsets
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
        section.orthogonalScrollingBehavior = .groupPaging
        
        return section
    }
    
    /// 필수 금융 앱, 유료 순위, 무료 순위 섹션
    static func createDefaultSection() -> NSCollectionLayoutSection {
        var defaultEdgeInsets: NSDirectionalEdgeInsets {
            return NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        }
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(80)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = defaultEdgeInsets
        
        let interItemSpacing = CGFloat(8)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(240)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = defaultEdgeInsets
        group.interItemSpacing = .fixed(interItemSpacing)
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = defaultEdgeInsets
        
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(60)
        )
        
        section.boundarySupplementaryItems = [
            NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top
            )
        ]
        
        return section
    }
}
