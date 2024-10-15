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
    
    // 구분 선
    private let lineView = UIView().then {
        $0.backgroundColor = .systemGray5
    }
    
    // 최상단 정보 뷰
    private let logoImage = UIImageView().then {
        $0.image = .imgTossLogo
        $0.layer.cornerRadius = 24
        $0.clipsToBounds = true
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor.systemGray5.cgColor
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "토스"
        $0.font = .systemFont(ofSize: 22, weight: .semibold)
    }
    
    private let subtitleLabel = UILabel().then {
        $0.text = "금융이 쉬워진다"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .systemGray
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
    private let newsLabel = UILabel().then {
        $0.text = "새로운 소식"
        $0.font = .systemFont(ofSize: 22, weight: .semibold)
    }
    
    private let versionInfoLabel = UILabel().then {
        $0.text = "버전 5.184.0"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .systemGray
    }
    
    private let versionHistoryLabel = UILabel().then {
        $0.text = "버전 기록"
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.textColor = .systemBlue
    }
    
    private let lastUpdatedLabel = UILabel().then {
        $0.text = "3일 전"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .systemGray
    }
    
    private let versionDetailTextView = UITextView().then {
        // TODO: 행간 적용
        // TODO: 동적 높이 적용
        
        $0.text = "• 구석구석 숨어있던 버그들을 잡았어요. 또 다른 버그가 나타나면 토스 고객센터를 찾아주세요. 늘 열려있답니다. 365일 24시간 언제든지요."
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textContainerInset = .zero  // 패딩 없앰
        $0.textContainer.lineFragmentPadding = 0  // 좌우 여백 없앰
        $0.isEditable = false
    }
    
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
         lineView,
         newsLabel,
         versionInfoLabel,
         versionHistoryLabel,
         lastUpdatedLabel,
         versionDetailTextView,
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
            $0.width.height.equalTo(116)
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
        
        lineView.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(20)
            $0.leading.equalToSuperview().inset(20)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        newsLabel.snp.makeConstraints() {
            $0.top.equalTo(lineView.snp.bottom).offset(12)
            $0.leading.equalToSuperview().offset(20)
        }
        
        versionInfoLabel.snp.makeConstraints() {
            $0.top.equalTo(newsLabel.snp.bottom).offset(6)
            $0.leading.equalToSuperview().offset(20)
        }
        
        versionHistoryLabel.snp.makeConstraints() {
            $0.bottom.equalTo(newsLabel.snp.bottom)
            $0.trailing.equalToSuperview().offset(-20)
        }
        
        lastUpdatedLabel.snp.makeConstraints() {
            $0.top.equalTo(versionHistoryLabel.snp.bottom).offset(6)
            $0.trailing.equalToSuperview().offset(-20)
        }
        
        versionDetailTextView.snp.makeConstraints() {
            $0.top.equalTo(versionInfoLabel.snp.bottom).offset(14)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-48)
            $0.height.equalTo(60)
        }
        
        dummyView.snp.makeConstraints() {
            $0.top.equalToSuperview().offset(1000)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(40)
            $0.bottom.equalToSuperview()
        }
    }
}
