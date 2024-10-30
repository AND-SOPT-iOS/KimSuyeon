//
//  FinanceAdHeaderView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit
import SnapKit
import Then

final class FinanceAdHeaderView: UICollectionReusableView {
    
    static let identifier = "FinanceAdHeaderView"
    
    private let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .semibold)
    }
    
    private let subtitleLabel = UILabel().then {
        $0.textColor = .systemGray
        $0.font = .systemFont(ofSize: 14, weight: .regular)
    }
    
    private let totalLabel = UILabel().then {
        $0.text = "모두 보기"
        $0.textColor = .systemBlue
        $0.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension FinanceAdHeaderView {
    func setUI() {
        self.backgroundColor = .white
        self.addSubviews(titleLabel, subtitleLabel, totalLabel)
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12)
            $0.leading.equalToSuperview().inset(20)
        }
        
        subtitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.leading.equalToSuperview().inset(20)
        }
        
        totalLabel.snp.makeConstraints {
            $0.centerY.equalTo(titleLabel.snp.centerY)
            $0.trailing.equalToSuperview().inset(20)
        }
    }
}

extension FinanceAdHeaderView {
    func configureHeader(title: String, subtitle: String) {
        titleLabel.text = title
        subtitleLabel.text = subtitle
    }
}
