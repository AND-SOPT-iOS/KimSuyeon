//
//  FinanceAdCollectionViewCell.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit
import SnapKit
import Then

final class FinanceAdCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "FinanceAdCollectionViewCell"
    
    private let categoryLabel = UILabel().then {
        $0.textColor = .systemBlue
        $0.font = .systemFont(ofSize: 12, weight: .semibold)
    }
    
    private let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 18, weight: .regular)
    }
    
    private let subtitleLabel = UILabel().then {
        $0.textColor = .systemGray
        $0.font = .systemFont(ofSize: 18, weight: .regular)
    }
    
    private let adImage = UIImageView().then {
        $0.layer.cornerRadius = 8
        $0.clipsToBounds = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension FinanceAdCollectionViewCell {
    func setUI() {
        backgroundColor = .white
        contentView.addSubviews(categoryLabel, titleLabel, subtitleLabel, adImage)
    }
    
    func setLayout() {
        categoryLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12)
            $0.leading.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(categoryLabel.snp.bottom).offset(4)
            $0.leading.equalToSuperview()
        }
        
        subtitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.leading.equalToSuperview()
        }
        
        adImage.snp.makeConstraints {
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(14)
            $0.leading.equalToSuperview()
        }
    }
}

extension FinanceAdCollectionViewCell {
    func dataBind(_ mockData: FinanceAdModel) {
        categoryLabel.text = mockData.category
        titleLabel.text = mockData.title
        subtitleLabel.text = mockData.subtitle
        adImage.image = mockData.image
    }
}
