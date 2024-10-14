//
//  TossView.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/12/24.
//

import UIKit
import SnapKit
import Then

final class TossView: UIView {
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    // 최상단 정보 뷰
    private let logoImage = UIImageView().then {
        $0.image = .imgTossLogo
        $0.layer.cornerRadius = 24
        $0.clipsToBounds = true
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "토스"
        $0.font = .systemFont(ofSize: 22, weight: .semibold)
    }
    
    private let subtitleLabel = UILabel().then {
        $0.text = "금융이 쉬워진다"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .gray
    }
    
    private let openButton = UIButton().then {
        $0.setTitle("열기", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 18
    }
    
    private let shareButton = UIButton().then {
        let config = UIImage.SymbolConfiguration(pointSize: 22, weight: .regular)
        let shareIcon = UIImage(systemName: "square.and.arrow.up", withConfiguration: config)
        $0.setImage(shareIcon, for: .normal)
        $0.tintColor = .systemBlue
    }
    
    // 새로운 소식 뷰
    private let newsLabel = UILabel()
    private let versionInfoLabel = UILabel()
    private let versionHistoryLabel = UILabel()
    private let lastUpdatedLabel = UILabel()
    private let versionDetailLabel = UILabel()
    
    // 미리 보기 뷰
    private let previewLabel = UILabel()
    private let previewImage = UIImageView()
    
    // 앱 정보 뷰
    private let appInfoLabel = UILabel()
    private let appMoreInfoLabel = UILabel()
    
    // 평가 및 리뷰 뷰
    private let reviewTitleLabel = UILabel()
    private let reviewScoreLabel = UILabel()
    private let reviewMoreInfoLabel = UILabel()
    private let maxScoreLabel = UILabel()
    private let reviewImage = UIImageView()
    private let reviewContentView = UIView()
    
    private let dummyView = UIView().then {
        $0.backgroundColor = .blue
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension TossView {
    func setUI() {
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        [logoImage,
         titleLabel,
         subtitleLabel,
         openButton,
         shareButton,
         dummyView
        ].forEach {
            contentView.addSubview($0)
        }
    }
    
    func setLayout() {
        scrollView.snp.makeConstraints() {
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints() {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            $0.height.greaterThanOrEqualToSuperview().priority(.low)
        }
        
        logoImage.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(4)
            $0.leading.equalToSuperview().offset(20)
            $0.width.height.equalTo(120)
        }
        
        titleLabel.snp.makeConstraints() {
            $0.top.equalTo(logoImage.snp.top)
            $0.leading.equalTo(logoImage.snp.trailing).offset(20)
        }
        
        subtitleLabel.snp.makeConstraints() {
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.leading.equalTo(logoImage.snp.trailing).offset(20)
        }
        
        openButton.snp.makeConstraints() {
            $0.bottom.equalTo(logoImage.snp.bottom)
            $0.leading.equalTo(logoImage.snp.trailing).offset(20)
            $0.width.equalTo(76)
            $0.height.equalTo(36)
        }
        
        shareButton.snp.makeConstraints() {
            $0.centerY.equalTo(openButton.snp.centerY)
            $0.trailing.equalToSuperview().offset(-20)
        }
        
        dummyView.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(1000)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(40)
            $0.bottom.equalToSuperview()
        }
    }
}
