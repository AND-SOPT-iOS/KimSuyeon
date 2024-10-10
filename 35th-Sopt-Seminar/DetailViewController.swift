//
//  DetailViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/10/24.
//

import UIKit
import SnapKit
import Then

final class DetailViewController: UIViewController {
    
    private var receivedContent: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(contentLabel)
        
        setUI()
        setLayout()
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "리뷰"
        $0.font = .systemFont(ofSize: 24, weight: .semibold)
    }
    
    private let contentLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 18, weight: .regular)
    }
    
    func dataBind(content: String) {
        self.receivedContent = content
        updateUI()
    }
    
    func updateUI() {
        self.contentLabel.text = receivedContent
    }
}

private extension DetailViewController {
    func setUI() {
        [titleLabel, contentLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
        }
        
        contentLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(160)
            $0.centerX.equalToSuperview()
        }
    }
}
