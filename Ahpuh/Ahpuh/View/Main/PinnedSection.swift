//
//  PinnedSection.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/14.
//

import SwiftUI

struct PinnedSection: View {
    
    let swimmingPools: [SwimmingPool]
    @Binding var pinnedSwimmingPoolsKeys: [String]
    private let headerTitle = "고정된 수영장"
    
    var body: some View {
        let pinnedSwimmingPools: [SwimmingPool] = pinnedSwimmingPools()
        Section {
            ForEach(pinnedSwimmingPools, id: \.id) { swimmingPool in
                if let swimmingPoolName = swimmingPool.name {
                    NavigationLink(swimmingPoolName) {
                        SwimmingPoolDetailView(swimmingPool: swimmingPool, 
                                               pinnedSwimmingPoolsKeys: $pinnedSwimmingPoolsKeys)
                    }
                    .swipeActions(edge: .leading) {
                        PinButtonView(swimmingPoolName: swimmingPoolName,
                                      pinImageName: (isToPin: "pin", isToUnpin: "pin.slash"),
                                      pinnedSwimmingPoolsKeys: $pinnedSwimmingPoolsKeys)
                    }
                }
            }
        } header: {
            Text(headerTitle)
                .font(.title2)
                .fontWeight(.semibold)
        }
    }
    private func pinnedSwimmingPools() -> [SwimmingPool] {
        let isIncluded: (SwimmingPool) -> Bool = {
            pinnedSwimmingPoolsKeys.contains($0.name ?? "")
        }
        return swimmingPools.filter(isIncluded)
    }
}


#Preview {
    let swimmingPools = MockFileKey.defaultValue
    let section = PinnedSection(swimmingPools: swimmingPools,
                                pinnedSwimmingPoolsKeys: .constant(["올림픽 공원 수영장"]))
    return List {
        section
    }
}
