//
//  DownloadState.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/30/24.
//

import Foundation

enum DownloadState {
    case installed
    case update
    case download
    case paid(price: Int)
}
