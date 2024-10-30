//
//  FinanceDefaultHeaderView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit
import SnapKit
import Then

final class FinanceDefaultHeaderView: UICollectionReusableView {
    
    static let identifier = "FinanceDefaultHeaderView"
    
    private let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .semibold)
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

private extension FinanceDefaultHeaderView {
    func setUI() {
        self.backgroundColor = .white
        self.addSubview(titleLabel)
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12)
            $0.leading.equalToSuperview().inset(20)
        }
    }
}

extension FinanceDefaultHeaderView {
    func configureHeader(title: String) {
        titleLabel.text = title
    }
}
