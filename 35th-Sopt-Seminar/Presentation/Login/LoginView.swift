//
//  LoginView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/2/24.
//

import UIKit
import SnapKit
import Then

final class LoginView: UIView {
    
    private let titleLabel = UILabel().then {
        $0.text = "로그인"
        $0.font = .systemFont(ofSize: 24, weight: .bold)
    }
    
    private let idView = UIView()
    
    private let passwordView = UIView()
    
    let idTextField = UITextField().then {
        $0.setPlaceholder(text: "아이디", color: .systemGray4)
        $0.font = .systemFont(ofSize: 16, weight: .medium)
        $0.setLayer(borderWidth: 1, borderColor: .systemGray4, cornerRadius: 4)
        $0.addPadding(left: 20, right:20)
        
        $0.keyboardType = .asciiCapable
        $0.autocapitalizationType = .none
    }
    
    let passwordTextField = UITextField().then {
        $0.setPlaceholder(text: "비밀번호", color: .systemGray4)
        $0.font = .systemFont(ofSize: 16, weight: .medium)
        $0.setLayer(borderWidth: 1, borderColor: .systemGray4, cornerRadius: 4)
        $0.addPadding(left: 20, right:20)
        
        $0.keyboardType = .asciiCapable
        $0.autocapitalizationType = .none
    }
    
    let loginButton = UIButton().then {
        $0.setTitle("로그인하기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 4
    }
    
    let registerButton = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        $0.backgroundColor = .systemGray4
        $0.layer.cornerRadius = 4
    }
    
    let resultLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 14, weight: .bold)
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

private extension LoginView {
    func setUI() {
        backgroundColor = .white
        addSubviews(titleLabel, idView, passwordView, loginButton, registerButton, resultLabel)
        idView.addSubview(idTextField)
        passwordView.addSubview(passwordTextField)
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(92)
            $0.centerX.equalToSuperview()
        }
        
        idView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(158)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(52)
        }
        
        idTextField.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        passwordView.snp.makeConstraints {
            $0.top.equalTo(idView.snp.bottom).offset(8)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(52)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordView.snp.bottom).offset(24)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(52)
        }
        
        registerButton.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(8)
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.height.equalTo(52)
        }
        
        resultLabel.snp.makeConstraints {
            $0.top.equalTo(registerButton.snp.bottom).offset(24)
            $0.centerX.equalToSuperview()
        }
    }
}
