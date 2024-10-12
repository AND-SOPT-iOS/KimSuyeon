//
//  DetailViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/10/24.
//

import UIKit
import SnapKit
import Then

protocol NicknameDelegate: AnyObject {
    func dataBind(nickname: String)
}

final class DetailViewController: UIViewController {
    
    private var receivedContent: String?
    
    weak var delegate: NicknameDelegate?
    
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
    
    private let nicknameTextField = UITextField().then {
        $0.placeholder = "닉네임을 작성해주세요!"
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
    
    private lazy var settingButton = UIButton().then {
        $0.setTitle("닉네임 작성 완료", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 12
        $0.addTarget(self, action: #selector(settingButtonDidTap), for: .touchUpInside)
    }
    
    func dataBind(content: String) {
        self.receivedContent = content
        updateUI()
    }
    
    func updateUI() {
        self.contentLabel.text = receivedContent
    }
    
    @objc
    func settingButtonDidTap() {
        if let nickname = nicknameTextField.text {
            delegate?.dataBind(nickname: nickname)
        }
        
        if self.navigationController != nil {
            self.navigationController?.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }
        
    }
}

private extension DetailViewController {
    func setUI() {
        [titleLabel, contentLabel, nicknameTextField, settingButton].forEach {
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
        
        nicknameTextField.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(240)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(48)
        }
        
        settingButton.snp.makeConstraints() {
            $0.bottom.equalToSuperview().offset(-52)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(60)
        }
    }
}
