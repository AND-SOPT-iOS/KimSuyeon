//
//  UserRegisterRequest.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 11/2/24.
//

import Foundation

struct UserRegisterRequest: Codable {
  let username: String
  let password: String
  let hobby: String
}
