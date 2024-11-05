//
//  TodayViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit
import SnapKit
import Then

final class TodayViewController: UIViewController {
    
    private let titleLabel = UILabel().then {
        $0.text = "투데이"
        $0.font = .systemFont(ofSize: 32, weight: .bold)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setLayout()
    }
}

private extension TodayViewController {
    func setUI() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(68)
            $0.leading.equalToSuperview().offset(20)
        }
    }
}
