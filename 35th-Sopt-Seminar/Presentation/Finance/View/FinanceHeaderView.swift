//
//  FinanceDefaultHeaderView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit
import SnapKit
import Then

final class FinanceHeaderView: UICollectionReusableView {
    
    static let identifier = "FinanceHeaderView"
    
    var didTapTotalLabel: (() -> Void)?
    
    private let border = UIView().then {
        $0.backgroundColor = .systemGray5
    }
    
    private let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .semibold)
    }
    
    private let totalLabel = UILabel().then {
        $0.text = "모두 보기"
        $0.textColor = .systemBlue
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.isUserInteractionEnabled = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setLayout()
        setupGesture()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(totalLabelTapped))
        totalLabel.addGestureRecognizer(tapGesture)
    }
    
    @objc private func totalLabelTapped() {
        didTapTotalLabel?()
    }
}

private extension FinanceHeaderView {
    func setUI() {
        backgroundColor = .white
        addSubviews(border, titleLabel, totalLabel)
    }
    
    func setLayout() {
        border.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.leading.equalToSuperview()
        }
        
        totalLabel.snp.makeConstraints {
            $0.centerY.equalTo(titleLabel.snp.centerY)
            $0.trailing.equalToSuperview()
        }
    }
}

extension FinanceHeaderView {
    func configureHeader(title: String) {
        titleLabel.text = title
    }
}
