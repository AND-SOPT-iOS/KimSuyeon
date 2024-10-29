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
    
    private lazy var financeButton = UIButton().then {
        $0.setTitle("금융", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 16
        $0.addTarget(self, action: #selector(financeButtonDidTap), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setLayout()
        setNavigationBar()
    }

    private func setNavigationBar() {
        let backButton = UIBarButtonItem(title: "앱", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButton
    }
    
    @objc
    func financeButtonDidTap() {
        let financeAppViewController = FinanceAppViewController()
        financeAppViewController.title = "금융"
        
        self.navigationController?.pushViewController(financeAppViewController, animated: true)
    }
}

private extension AppViewController {
    func setUI() {
        view.backgroundColor = .white
        view.addSubviews(titleLabel, financeButton)
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(68)
            $0.leading.equalToSuperview().offset(20)
        }
        
        financeButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(160)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(60)
        }
    }
}
