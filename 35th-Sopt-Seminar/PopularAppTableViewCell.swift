//
//  PopularAppTableViewCell.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/26/24.
//

import UIKit
import SnapKit
import Then

final class PopularAppTableViewCell: UITableViewCell {
    
    static let identifier = "PopularAppTableViewCell"
    
    private let iconImageView = UIImageView().then {
        $0.layer.cornerRadius = 12
        $0.clipsToBounds = true
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.systemGray5.cgColor
    }
    
    private let verticalStackView = UIStackView().then {
        $0.axis = .vertical
        $0.alignment = .top
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private let rankingLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 16, weight: .semibold)
    }
    
    private let titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.numberOfLines = 2
    }
    
    private let subtitleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .systemGray
        $0.numberOfLines = 2
    }
    
    private let downloadButton = UIButton().then {
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .systemGray5
        $0.layer.cornerRadius = 16
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        [iconImageView,
         rankingLabel,
         verticalStackView,
         downloadButton
        ].forEach { addSubview($0) }
        
        [titleLabel,
         subtitleLabel
        ].forEach { verticalStackView.addArrangedSubview($0) }
    }
    
    private func setLayout() {
        iconImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(20)
            $0.size.equalTo(60)
        }
        
        rankingLabel.snp.makeConstraints {
            $0.top.equalTo(verticalStackView.snp.top)
            $0.leading.equalTo(iconImageView.snp.trailing).offset(12)
        }
        
        verticalStackView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(rankingLabel.snp.trailing).offset(16)
            $0.trailing.equalTo(downloadButton.snp.leading).offset(-20)
        }
        
        downloadButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().offset(-20)
            $0.width.equalTo(80)
            $0.height.equalTo(32)
        }
    }
}

extension PopularAppTableViewCell {
    func dataBind(_ popularApp: PopularApp) {
        iconImageView.image = popularApp.iconImage
        rankingLabel.text = popularApp.ranking.description
        titleLabel.text = popularApp.title
        subtitleLabel.text = popularApp.subtitle
        switch popularApp.download {
        case .download:
            downloadButton.setTitle("받기", for: .normal)
        case .update:
            downloadButton.setTitle("업데이트", for: .normal)
        }
    }
}
