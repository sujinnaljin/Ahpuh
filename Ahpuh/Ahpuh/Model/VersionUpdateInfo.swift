//
//  VersionUpdateInfo.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/21.
//

import Foundation

struct VersionUpdateInfo: Decodable {
    let version: String?
    let needToUpdate: Bool?
}
