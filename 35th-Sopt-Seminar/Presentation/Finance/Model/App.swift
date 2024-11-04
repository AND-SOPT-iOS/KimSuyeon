//
//  FinanceAppModel.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/4/24.
//

import UIKit

struct App {
    let appImage: UIImage
    let ranking: Int?
    let title: String
    let subtitle: String
    let downloadState: DownloadState
    
    init(
        appImage: UIImage,
        ranking: Int? = nil,
        title: String,
        subtitle: String,
        downloadState: DownloadState
    ) {
        self.appImage = appImage
        self.ranking = ranking
        self.title = title
        self.subtitle = subtitle
        self.downloadState = downloadState
    }
}
