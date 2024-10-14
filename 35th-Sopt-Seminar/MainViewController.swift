//
//  MainViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/14/24.
//

import UIKit
import SnapKit
import Then

final class MainViewController: UIViewController {
    private lazy var tossButton = UIButton().then {
        $0.setTitle("토스 앱 상세 페이지", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 18
        $0.addTarget(self, action: #selector(tossButtonDidTap), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUI()
        setLayout()
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        let backButton = UIBarButtonItem(title: "앱", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButton
    }
    
    @objc
    private func tossButtonDidTap() {
        let tossViewController = TossViewController()
        self.navigationController?.pushViewController(tossViewController, animated: true)
    }
}

private extension MainViewController {
    func setUI() {
        view.addSubview(tossButton)
    }
    
    func setLayout() {
        tossButton.snp.makeConstraints() {
            $0.bottom.equalToSuperview().offset(-52)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(60)
        }
    }
}
