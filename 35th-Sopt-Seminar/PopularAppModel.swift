//
//  PopularAppModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/26/24.
//

import UIKit

struct PopularApp {
    let iconImage: UIImage
    let ranking: Int
    let title: String
    let subtitle: String
    let download: DownloadState
    let category: AppCategory
}

enum DownloadState {
    case download
    case update
}

enum AppCategory {
    case social
    case entertainment
    case travel
    case sports
}

extension PopularApp {
    static func mockData() -> [PopularApp] {
        return [
            PopularApp(iconImage: .imgTossLogo, ranking: 1, title: "Threads", subtitle: "텍스트로 아이디어와 트렌드를 공유하세요", download: .download, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 2, title: "당근", subtitle: "당신 근처의 지역 생활 커뮤니티", download: .download, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 3, title: "카카오톡", subtitle: "모든 연결의 시작", download: .update, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 4, title: "라인 LINE", subtitle: "소셜 네트워킹", download: .download, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 5, title: "네이버 카페", subtitle: "소셜 네트워킹", download: .download, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 6, title: "Google Meet", subtitle: "영상 통화 및 회의", download: .download, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 7, title: "FaceBook", subtitle: "좋아하는 것을 살펴보세요", download: .download, category: .social),
            PopularApp(iconImage: .imgTossLogo, ranking: 8, title: "Discord - 대화, 플레이, 어울리기", subtitle: "재미와 게임을 위한 그룹 채팅", download: .update, category: .social)
        ]
    }
}
