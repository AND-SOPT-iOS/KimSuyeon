//
//  FinanceFreeModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit

struct FinanceFreeModel {
    let appImage: UIImage
    let ranking: Int
    let title: String
    let subtitle: String
    let downloadState: DownloadState
}

extension FinanceFreeModel {
    static func mockFreeData() -> [FinanceFreeModel] {
        return [
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 1,
                title: "실손 24",
                subtitle: "간편한 실손보험 청구",
                downloadState: .download
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 2,
                title: "한국투자증권",
                subtitle: "한국투자",
                downloadState: .download
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 3,
                title: "네이버페이",
                subtitle: "지갑 없이 매장에서 결제",
                downloadState: .installed
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 4,
                title: "카카오페이",
                subtitle: "마음 놓고 금융하다",
                downloadState: .installed
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 5,
                title: "KB스타뱅킹",
                subtitle: "모바일신분증, 결제, 통신도 다 되는 은행",
                downloadState: .download
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 6,
                title: "KB Pay",
                subtitle: "모든 금융을 한번에, 한손에, 한눈에 담다",
                downloadState: .download
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 7,
                title: "monimo (모니모, 삼성 금융네트웍스)",
                subtitle: "모이는 금융, 커지는 혜택!",
                downloadState: .download
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 8,
                title: "나무증권 - NH 투자증권 MTS",
                subtitle: "쉽고 편한 국내주식, 해외주식",
                downloadState: .download
            ),
            FinanceFreeModel(
                appImage: .imgTossIcon,
                ranking: 9,
                title: "토스",
                subtitle: "금융이 쉬워진다",
                downloadState: .installed
            )
        ]
    }
}
