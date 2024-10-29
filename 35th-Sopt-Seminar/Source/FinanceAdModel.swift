//
//  FinanceAdModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit

struct FinanceAdModel {
    let category: String
    let title: String
    let subtitle: String
    let image: UIImage
}

extension FinanceAdModel {
    static func mockAdData() -> [FinanceAdModel] {
        return [
            FinanceAdModel(
                category: "새로운 경험",
                title: "Fortune City - A Finance App",
                subtitle: "게임을 하듯 관리하는 가계부",
                image: .imgFortuneCity
            ),
            FinanceAdModel(
                category: "추천",
                title: "Taxnote 부기 및 회계 앱",
                subtitle: "간편한 장부 관리",
                image: .imgTaxnote
            ),
            FinanceAdModel(
                category: "추천",
                title: "Currenzy",
                subtitle: "빠르고 쉬운 환율 계산",
                image: .imgCurrenzy
            ),
            FinanceAdModel(
                category: "새로운 앱",
                title: "Elk - 여행 환율 변환기",
                subtitle: "언제 어디서나 간편한 환율 체크",
                image: .imgElk
            )
        ]
    }
}
