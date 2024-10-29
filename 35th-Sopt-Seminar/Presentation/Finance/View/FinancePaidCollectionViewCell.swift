//
//  FinancePaidCollectionViewCell.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit
import SnapKit
import Then

final class FinancePaidCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "FinancePaidCollectionViewCell"
    
    private let appImage = UIImageView().then {
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.systemGray4.cgColor
        $0.layer.cornerRadius = 16
        $0.clipsToBounds = true
    }
    
    private let rankingLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 16, weight: .semibold)
    }
    
    private let verticalStackView = UIStackView().then {
        $0.axis = .vertical
        $0.alignment = .top
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    private let subtitleLabel = UILabel().then {
        $0.textColor = .systemGray
        $0.font = .systemFont(ofSize: 12, weight: .regular)
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

private extension FinancePaidCollectionViewCell {
    func setUI() {
        self.backgroundColor = .white
        contentView.addSubviews(appImage, rankingLabel, verticalStackView)
        verticalStackView.addArrangedSubviews(titleLabel, subtitleLabel)
    }
    
    func setLayout() {
        appImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.leading.equalToSuperview()
            $0.size.equalTo(62)
        }
        
        rankingLabel.snp.makeConstraints {
            $0.top.equalTo(verticalStackView.snp.top)
            $0.leading.equalTo(appImage.snp.trailing).offset(12)
        }
        
        verticalStackView.snp.makeConstraints {
            $0.centerY.equalTo(appImage.snp.centerY)
            $0.leading.equalTo(rankingLabel.snp.trailing).offset(16)
        }
    }
}

extension FinancePaidCollectionViewCell {
    func dataBind(_ mockData: FinancePaidModel) {
        appImage.image = mockData.appImage
        rankingLabel.text = mockData.ranking.description
        titleLabel.text = mockData.title
        subtitleLabel.text = mockData.subtitle
    }
}
