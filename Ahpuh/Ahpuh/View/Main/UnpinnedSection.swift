//
//  UnpinnedSection.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/14.
//

import SwiftUI

struct UnpinnedSection: View {
    let swimmingPools: [SwimmingPool]
    @Binding var pinnedSwimmingPoolsKeys: [String]
    private let headerTitle = "모든 수영장"
    private let swipeActionImageName = "pin"
    
    var body: some View {
        let unPinnedSwimmingPools: [SwimmingPool] = unPinnedSwimmingPools()
        Section {
            ForEach(unPinnedSwimmingPools, id: \.id) { swimmingPool in
                if let swimmingPoolName = swimmingPool.name {
                    NavigationLink(swimmingPoolName) {
                        SwimmingPoolDetailView(swimmingPool: swimmingPool)
                    }
                    .swipeActions(edge: .leading) {
                        Button {
                            pinnedSwimmingPoolsKeys.append(swimmingPoolName)
                        } label: {
                            Image(systemName: swipeActionImageName)
                        }
                        .tint(.yellow)
                    }
                }
            }
        } header: {
            Text(headerTitle)
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
    private func unPinnedSwimmingPools() -> [SwimmingPool] {
        let isNotIncluded: (SwimmingPool) -> Bool = {
            !pinnedSwimmingPoolsKeys.contains($0.name ?? "")
        }
        return swimmingPools.filter(isNotIncluded)
    }
}


#Preview {
    let swimmingPools = MockFileKey.defaultValue
    let section = UnpinnedSection(swimmingPools: swimmingPools,
                           pinnedSwimmingPoolsKeys: .constant(["올림픽 공원 수영장"]))
    return List {
        section
    }
}
