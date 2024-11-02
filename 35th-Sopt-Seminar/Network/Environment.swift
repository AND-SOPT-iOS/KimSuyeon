//
//  Environment.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/2/24.
//

import Foundation

enum Environment {
  static let baseURL: String = Bundle.main.infoDictionary?["BASE_URL"] as! String
}
