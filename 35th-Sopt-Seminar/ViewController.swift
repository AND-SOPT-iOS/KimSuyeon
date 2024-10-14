//
//  ViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/10/24.
//

import UIKit
import SnapKit
import Then

enum transitionMode {
    case navigation
    case modal
}

class ViewController: UIViewController {
    
    private var mode: transitionMode = .navigation
    
    private let logoImage = UIImageView().then {
        $0.image = .imgSopt
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
    }

    private let titleLabel = UILabel().then {
        $0.text = "SOPT"
        $0.font = .systemFont(ofSize: 24, weight: .semibold)
    }
    
    private let subtitleLabel = UILabel().then {
        $0.text = "1주차 세미나"
        $0.textColor = .gray
    }
    
    private let modeLabel = UILabel().then {
        $0.textColor = .gray
    }
    
    private lazy var openButton = UIButton().then {
        $0.setTitle("열기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 18
        $0.addTarget(self, action: #selector(openButtonDidTap), for: .touchUpInside)
    }
    
    private lazy var modeButton = UIButton().then {
        $0.setTitle("화면 전환 모드 바꾸기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 12
        $0.addTarget(self, action: #selector(modeButtonDidTap), for: .touchUpInside)
    }
    
    private let contentTextField = UITextField().then {
        $0.placeholder = "리뷰를 작성해주세요!"
        $0.clearButtonMode = .whileEditing
        $0.layer.borderColor = UIColor.gray.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 12
        
        // 왼쪽 패딩
        let paddingLeftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: $0.frame.height))
        $0.leftView = paddingLeftView
        $0.leftViewMode = .always
        
        // 오른쪽 패딩
        let paddingRightView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: $0.frame.height))
        $0.rightView = paddingRightView
        $0.rightViewMode = .always
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        updateUI()
        setUI()
        setLayout()
    }

    private func updateUI() {
        switch mode {
        case .navigation:
            self.modeLabel.text = "네비게이션 모드"
        case .modal:
            self.modeLabel.text = "모달 모드"
        }
    }
    
    private func toggleTransitionMode() {
        switch mode {
        case .navigation:
            mode = .modal
            self.modeLabel.text = "모달 모드"
        case .modal:
            mode = .navigation
            self.modeLabel.text = "네비게이션 모드"
        }
    }
    
    private func transitionToDetailViewController() {
        let detailViewController = DetailViewController()
        
        guard let content = contentTextField.text else { return }
        detailViewController.dataBind(
            content: content
        )
        
        switch mode {
        case .navigation:
            self.navigationController?.pushViewController(detailViewController, animated: true)
        case .modal:
            self.present(detailViewController, animated: true)
        }
    }
    
    @objc
    func modeButtonDidTap() {
        toggleTransitionMode()
    }
    
    @objc
    func openButtonDidTap() {
        transitionToDetailViewController()
    }
}

private extension ViewController {
    func setUI() {
        [logoImage, titleLabel, subtitleLabel, modeLabel, openButton, modeButton, contentTextField].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
    }
    
    func setLayout() {
        logoImage.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(120)
            $0.leading.equalToSuperview().offset(20)
            $0.width.height.equalTo(128)
        }
        
        titleLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(128)
            $0.leading.equalTo(logoImage.snp.trailing).offset(20)
        }
        
        subtitleLabel.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(160)
            $0.leading.equalTo(logoImage.snp.trailing).offset(20)
        }
        
        modeLabel.snp.makeConstraints() {
            $0.bottom.equalToSuperview().offset(-136)
            $0.centerX.equalToSuperview()
        }
        
        contentTextField.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(280)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(48)
        }
        
        openButton.snp.makeConstraints() {
            $0.bottom.equalTo(logoImage.snp.bottom)
            $0.leading.equalTo(logoImage.snp.trailing).offset(20)
            $0.width.equalTo(76)
            $0.height.equalTo(36)
        }
        
        modeButton.snp.makeConstraints() {
            $0.bottom.equalToSuperview().offset(-52)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(60)
        }
    }
}
