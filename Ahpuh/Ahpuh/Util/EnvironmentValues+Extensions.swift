//
//  EnvironmentValues+Extensions.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/14.
//

import Foundation
import SwiftUI

struct TestEnvironmentKey: EnvironmentKey {
    static let defaultValue: Bool = false // 테스트 환경 Flag
}

struct MockFileKey: EnvironmentKey {
    private static let mockFileName: String = "SwimmingPools"
    static let defaultValue: [SwimmingPool] = JsonParser.load(type: [SwimmingPool].self,
                                                              fileName: mockFileName) ?? []
    
}

extension EnvironmentValues {
  var isTestEnverionment: Bool {
    get { self[TestEnvironmentKey.self] }
    set { self[TestEnvironmentKey.self] = newValue }
  }
    var mockFile: [SwimmingPool] {
      get { self[MockFileKey.self] }
      set { self[MockFileKey.self] = newValue }
    }
}



