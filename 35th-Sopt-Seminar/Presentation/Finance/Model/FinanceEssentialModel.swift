//
//  FinanceEssentialModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import UIKit

struct FinanceEssentialModel {
    let appImage: UIImage
    let title: String
    let subtitle: String
    let downloadState: DownloadState
}

extension FinanceEssentialModel {
    static func mockEssentialData() -> [FinanceEssentialModel] {
        return [
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "Fin - 가계부 및 예산 추적기",
                subtitle: "당신의 돈은 어디로 가고 있을까요?",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "Splitwise",
                subtitle: "금융",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "CardPointers for Credit Cards",
                subtitle: "금융",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "YNAB",
                subtitle: "금융",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "MoneyStats - Budget Planner",
                subtitle: "금융",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "Buddy: Budget Planner App",
                subtitle: "금융",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "Money Coach Budget Manager Pro",
                subtitle: "Expense Tracker, Bill Planner",
                downloadState: .download
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "iFinance 5",
                subtitle: "금융",
                downloadState: .paid(price: 29000)
            ),
            FinanceEssentialModel(
                appImage: .imgTossIcon,
                title: "MarketWatch - News & Data",
                subtitle: "금융",
                downloadState: .download
            )
        ]
    }
}
