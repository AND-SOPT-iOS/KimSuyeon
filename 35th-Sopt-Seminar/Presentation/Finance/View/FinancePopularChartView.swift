//
//  FinancePopularChartView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit
import SnapKit
import Then

final class FinancePopularChartView: UIView {
    
    let tableView = UITableView(frame: .zero, style: .plain).then {
        $0.backgroundColor = .clear
        $0.showsVerticalScrollIndicator = false
        $0.separatorStyle = .none
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

private extension FinancePopularChartView {
    func setUI() {
        backgroundColor = .white
        addSubview(tableView)
    }
    
    func setLayout() {
        tableView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.top.bottom.equalToSuperview()
        }
    }
}
