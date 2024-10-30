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
            case 1:
                section = createEssentialSection()
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
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(308)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(320)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = defaultEdgeInsets
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = defaultEdgeInsets
        section.orthogonalScrollingBehavior = .paging
        
        return section
    }
    
    /// 필수 금융 앱 섹션
    static func createEssentialSection() -> NSCollectionLayoutSection {
        var defaultEdgeInsets: NSDirectionalEdgeInsets {
            return NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        }
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(80)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = defaultEdgeInsets
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(240)
        )
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item, item, item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = defaultEdgeInsets
        section.orthogonalScrollingBehavior = .groupPaging
        
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
    
    /// 유료 순위, 무료 순위 섹션
    static func createDefaultSection() -> NSCollectionLayoutSection {
        var defaultEdgeInsets: NSDirectionalEdgeInsets {
            return NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        }
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(80)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = defaultEdgeInsets
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(240)
        )
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item, item, item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = defaultEdgeInsets
        section.orthogonalScrollingBehavior = .groupPaging
        
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(36)
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
