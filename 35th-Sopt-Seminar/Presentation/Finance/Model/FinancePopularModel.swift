//
//  FinancePopularModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit

struct FinancePopularModel {
    let appImage: UIImage
    let ranking: Int
    let title: String
    let subtitle: String
    let downloadState: DownloadState
}

extension FinancePopularModel {
    static func mockPopularData() -> [FinancePopularModel] {
        return [
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 1,
                title: "실손 24",
                subtitle: "간편한 실손보험 청구",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 2,
                title: "한국투자증권",
                subtitle: "한국투자",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 3,
                title: "네이버페이",
                subtitle: "지갑 없이 매장에서 결제",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 4,
                title: "카카오페이",
                subtitle: "마음 놓고 금융하다",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 5,
                title: "내 곁에 국민연금",
                subtitle: "국민연금공단 내 곁에 국민연금 대국민 서비스 앱",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 6,
                title: "KB Pay",
                subtitle: "모든 금융을 한번에, 한손에, 한눈에 담다",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 7,
                title: "KB 스타뱅킹",
                subtitle: "모바일신분증, 결제, 통신도 다 되는 은행",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 8,
                title: "하나은행, 하나원큐는 돈 기운 가득한 은행 앱",
                subtitle: "송금, 해외송금, 유학생송금",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 9,
                title: "monimo(모니모, 삼성 금융네트웍스)",
                subtitle: "모이는 금융, 커지는 혜택!",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 10,
                title: "NH올원뱅크",
                subtitle: "금융",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 11,
                title: "토스",
                subtitle: "금융이 쉬워진다",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 12,
                title: "케이뱅크 (Kbank)",
                subtitle: "make money",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 13,
                title: "신한 SOL 뱅크 - 신한은행 스마트폰 뱅킹",
                subtitle: "금융",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 14,
                title: "트래블월렛 - Travel Pay",
                subtitle: "페이에 세계를 담다",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 15,
                title: "카카오 뱅크",
                subtitle: "이미 모두의 은행",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 16,
                title: "신한 SOL 페이 - 신한카드 대표플랫폼",
                subtitle: "결제부터 자산관리",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 17,
                title: "V3 Mobile Plus",
                subtitle: "코스콤 통합인증 / 알림장 메시지 서비스",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 18,
                title: "현대카드",
                subtitle: "금융",
                downloadState: .download
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 19,
                title: "신한 슈퍼SOL - 신한 유니버설 금융 앱",
                subtitle: "금융",
                downloadState: .installed
            ),
            FinancePopularModel(
                appImage: .imgTossIcon,
                ranking: 20,
                title: "업비트 - 가장 신뢰받는 디지털 자산 거래소",
                subtitle: "금융",
                downloadState: .download
            )
        ]
    }
}

