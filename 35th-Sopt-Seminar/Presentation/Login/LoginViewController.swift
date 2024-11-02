//
//  LoginViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/2/24.
//

import UIKit
import SnapKit
import Then

final class LoginViewController: UIViewController {
    
    private let rootView = LoginView()
    
    private let userLoginService = UserLoginService()
    
    override func loadView() {
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTarget()
    }
    
    private func setTarget() {
        rootView.loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
    }
    
    @objc
    private func loginButtonDidTap() {
        userLoginService.login(
            username: rootView.idTextField.text ?? "",
            password: rootView.passwordTextField.text ?? ""
        ) {
            [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                var text: String
                switch result {
                case .success:
                    text = "성공"
                case let .failure(error):
                    text = error.errorMessage
                }
                
                self.rootView.resultLabel.text = text
            }
        }
    }
}
