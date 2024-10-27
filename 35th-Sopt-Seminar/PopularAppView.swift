//
//  PopularAppView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/26/24.
//

import UIKit
import SnapKit
import Then

final class PopularAppView: UIView {
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    let appList = PopularApp.mockData()
    
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

private extension PopularAppView {
    func setUI() {
        self.backgroundColor = .white
        addSubview(tableView)
    }
    
    func setLayout() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
