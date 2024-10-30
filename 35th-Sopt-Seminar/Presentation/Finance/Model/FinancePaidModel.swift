//
//  FinancePaidModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit

struct FinancePaidModel {
    let appImage: UIImage
    let ranking: Int
    let title: String
    let subtitle: String
    let downloadState: DownloadState
}

extension FinancePaidModel {
    static func mockPaidData() -> [FinancePaidModel] {
        return [
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 1,
                title: "위플 가계부 Pro",
                subtitle: "아이폰 사용자 수 1위 가계부",
                downloadState: .paid(price: 14000)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 2,
                title: "편한가계부 (광고제거)",
                subtitle: "국내 1위 가계부",
                downloadState: .paid(price: 8800)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 3,
                title: "보안카드 위젯",
                subtitle: "초스피드 계좌이체",
                downloadState: .paid(price: 3300)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 4,
                title: "멤버십 위젯 Pro",
                subtitle: "멤버십, 쿠폰, 포인트를 한번에 빠르게 할인/적립 받기",
                downloadState: .paid(price: 4400)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 5,
                title: "BA Financial Calculater (PRO)",
                subtitle: "금융",
                downloadState: .paid(price: 4400)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 6,
                title: "Myanmar Market Price Pro",
                subtitle: "금융",
                downloadState: .paid(price: 4400)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 7,
                title: "코스트잇",
                subtitle: "알뜰살뜰 소비 메모장",
                downloadState: .paid(price: 1100)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 8,
                title: "BA Plus Financial Calc",
                subtitle: "금융",
                downloadState: .paid(price: 22000)
            ),
            FinancePaidModel(
                appImage: .imgTossIcon,
                ranking: 9,
                title: "편한 가계부 Classic (+ PC 가계부)",
                subtitle: "금융",
                downloadState: .paid(price: 8800)
            )
        ]
    }
}
