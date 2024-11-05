//
//  FinanceAppModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/4/24.
//

import UIKit

struct FinanceAppModel {
    
    /// 추천
    static func mockRecommendedData() -> [RecommendedApp] {
        return [
            RecommendedApp(
                category: "새로운 경험",
                title: "Fortune City - A Finance App",
                subtitle: "게임을 하듯 관리하는 가계부",
                image: .imgFortuneCity
            ),
            RecommendedApp(
                category: "추천",
                title: "Taxnote 부기 및 회계 앱",
                subtitle: "간편한 장부 관리",
                image: .imgTaxnote
            ),
            RecommendedApp(
                category: "추천",
                title: "Currenzy",
                subtitle: "빠르고 쉬운 환율 계산",
                image: .imgCurrenzy
            ),
            RecommendedApp(
                category: "새로운 앱",
                title: "Elk - 여행 환율 변환기",
                subtitle: "언제 어디서나 간편한 환율 체크",
                image: .imgElk
            )
        ]
    }
    
    /// 필수 금융 앱
    static func mockEssentialData() -> [App] {
        return [
            App(
                appImage: .imgTossIcon,
                title: "Fin - 가계부 및 예산 추적기",
                subtitle: "당신의 돈은 어디로 가고 있을까요?",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "Splitwise",
                subtitle: "금융",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "CardPointers for Credit Cards",
                subtitle: "금융",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "YNAB",
                subtitle: "금융",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "MoneyStats - Budget Planner",
                subtitle: "금융",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "Buddy: Budget Planner App",
                subtitle: "금융",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "Money Coach Budget Manager Pro",
                subtitle: "Expense Tracker, Bill Planner",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                title: "iFinance 5",
                subtitle: "금융",
                downloadState: .paid(price: 29000)
            ),
            App(
                appImage: .imgTossIcon,
                title: "MarketWatch - News & Data",
                subtitle: "금융",
                downloadState: .download
            )
        ]
    }
    
    /// 유료 순위
    static func mockPaidData() -> [App] {
        return [
            App(
                appImage: .imgTossIcon,
                ranking: 1,
                title: "위플 가계부 Pro",
                subtitle: "아이폰 사용자 수 1위 가계부",
                downloadState: .paid(price: 14000)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 2,
                title: "편한가계부 (광고제거)",
                subtitle: "국내 1위 가계부",
                downloadState: .paid(price: 8800)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 3,
                title: "보안카드 위젯",
                subtitle: "초스피드 계좌이체",
                downloadState: .paid(price: 3300)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 4,
                title: "멤버십 위젯 Pro",
                subtitle: "멤버십, 쿠폰, 포인트를 한번에 빠르게 할인/적립 받기",
                downloadState: .paid(price: 4400)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 5,
                title: "BA Financial Calculater (PRO)",
                subtitle: "금융",
                downloadState: .paid(price: 4400)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 6,
                title: "Myanmar Market Price Pro",
                subtitle: "금융",
                downloadState: .paid(price: 4400)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 7,
                title: "코스트잇",
                subtitle: "알뜰살뜰 소비 메모장",
                downloadState: .paid(price: 1100)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 8,
                title: "BA Plus Financial Calc",
                subtitle: "금융",
                downloadState: .paid(price: 22000)
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 9,
                title: "편한 가계부 Classic (+ PC 가계부)",
                subtitle: "금융",
                downloadState: .paid(price: 8800)
            )
        ]
    }
    
    /// 무료 순위
    static func mockFreeData() -> [App] {
        return [
            App(
                appImage: .imgSilson24,
                ranking: 1,
                title: "실손 24",
                subtitle: "간편한 실손보험 청구",
                downloadState: .download
            ),
            App(
                appImage: .imgHantu,
                ranking: 2,
                title: "한국투자증권",
                subtitle: "한국투자",
                downloadState: .download
            ),
            App(
                appImage: .imgNaverPay,
                ranking: 3,
                title: "네이버페이",
                subtitle: "지갑 없이 매장에서 결제",
                downloadState: .installed
            ),
            App(
                appImage: .imgKakaoPay,
                ranking: 4,
                title: "카카오페이",
                subtitle: "마음 놓고 금융하다",
                downloadState: .installed
            ),
            App(
                appImage: .imgKbank,
                ranking: 5,
                title: "KB스타뱅킹",
                subtitle: "모바일신분증, 결제, 통신도 다 되는 은행",
                downloadState: .download
            ),
            App(
                appImage: .imgKbPay,
                ranking: 6,
                title: "KB Pay",
                subtitle: "모든 금융을 한번에, 한손에, 한눈에 담다",
                downloadState: .download
            ),
            App(
                appImage: .imgMonimo,
                ranking: 7,
                title: "monimo (모니모, 삼성 금융네트웍스)",
                subtitle: "모이는 금융, 커지는 혜택!",
                downloadState: .download
            ),
            App(
                appImage: .imgNhBank,
                ranking: 8,
                title: "나무증권 - NH 투자증권 MTS",
                subtitle: "쉽고 편한 국내주식, 해외주식",
                downloadState: .download
            ),
            App(
                appImage: .imgTossIcon,
                ranking: 9,
                title: "토스",
                subtitle: "금융이 쉬워진다",
                downloadState: .installed
            )
        ]
    }
}
