//
//  FinanceFreeCollectionViewCell.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit
import SnapKit
import Then

final class FinanceFreeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "FinanceFreeCollectionViewCell"
    
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
        $0.numberOfLines = 2
    }
    
    private let subtitleLabel = UILabel().then {
        $0.textColor = .systemGray
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.numberOfLines = 2
    }
    
    private let downloadButton = UIButton().then {
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = 16
    }
    
    let border = UIView().then {
        $0.backgroundColor = .systemGray5
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

private extension FinanceFreeCollectionViewCell {
    func setUI() {
        self.backgroundColor = .white
        contentView.addSubviews(appImage, rankingLabel, verticalStackView, downloadButton, border)
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
            $0.trailing.equalTo(downloadButton.snp.leading).offset(-8)
        }
        
        downloadButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.width.equalTo(80)
            $0.height.equalTo(32)
        }
        
        border.snp.makeConstraints {
            $0.bottom.trailing.equalToSuperview()
            $0.leading.equalTo(appImage.snp.trailing).offset(12)
            $0.height.equalTo(1)
        }
    }
}

extension FinanceFreeCollectionViewCell {
    func dataBind(_ mockData: FinanceFreeModel) {
        appImage.image = mockData.appImage
        rankingLabel.text = mockData.ranking.description
        titleLabel.text = mockData.title
        subtitleLabel.text = mockData.subtitle
        switch mockData.downloadState {
        case .installed:
            downloadButton.setTitle("열기", for: .normal)
        case .update:
            downloadButton.setTitle("업데이트", for: .normal)
        case .download:
            downloadButton.setTitle("받기", for: .normal)
        case .paid(let price):
            break
        }
    }
}
