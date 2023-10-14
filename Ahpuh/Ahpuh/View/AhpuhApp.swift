//
//  AhpuhApp.swift
//  AhpuhApp
//
//  Created by 강수진 on 2023/10/13.
//

import SwiftUI
import Foundation

@main
struct AhpuhApp: App {
    let isTestEnverionment = TestEnvironmentKey.defaultValue
    let mockFile = MockFileKey.defaultValue
    var body: some Scene {
        WindowGroup {
            SwimmingPoolListView()
                .environment(\.isTestEnverionment, isTestEnverionment)
                .environment(\.mockFile, mockFile)
        }
    }
}

