//
//  AppViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit
import SnapKit
import Then

final class AppViewController: UIViewController {
    
    private let titleLabel = UILabel().then {
        $0.text = "앱"
        $0.font = .systemFont(ofSize: 32, weight: .bold)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUI()
        
    }
    
    private func setUI() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(68)
            $0.leading.equalToSuperview().offset(20)
        }
    }
}
