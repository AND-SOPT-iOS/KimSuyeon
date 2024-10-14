//
//  TossViewController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/12/24.
//

import UIKit
import SnapKit
import Then

final class TossViewController: UIViewController {
    override func loadView() {
        super.loadView()
        self.view = TossView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
