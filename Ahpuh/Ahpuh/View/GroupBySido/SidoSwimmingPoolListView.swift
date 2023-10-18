//
//  SidoSwimmingPoolListView.swift
//  Ahpuh
//
//  Created by 강수진 on 10/17/23.
//

import SwiftUI

struct SidoSwimmingPoolListView: View {
    
    let sidoName: String
    let swimmingPools: [SwimmingPool]
    @Binding var pinnedSwimmingPoolsKeys: [String]
    private let swipeActionImageName = "pin"
    private let swimmingPoolsBySigunguName: [String : [SwimmingPool]]
    
    init(sidoName: String, swimmingPools: [SwimmingPool], pinnedSwimmingPoolsKeys: Binding<[String]>) {
        self.sidoName = sidoName
        self.swimmingPools = swimmingPools
        self._pinnedSwimmingPoolsKeys = pinnedSwimmingPoolsKeys
        let swimmingPoolsBySigunguCode = Dictionary(grouping: swimmingPools,
                                                    by: { $0.sigunguCode })
        var swimmingPoolsBySigunguName: [String : [SwimmingPool]] = [:]
        swimmingPoolsBySigunguCode
            .forEach { sigunguCode, swimmingPoolsInSigungu in
                guard let sigunguName = SigunguNameGenerator.name(sigunguCode: sigunguCode,
                                                                  sidoCode: swimmingPoolsInSigungu.first?.sidoCode) else {
                    return
                }
                swimmingPoolsBySigunguName[sigunguName] = swimmingPoolsInSigungu
            }
        self.swimmingPoolsBySigunguName = swimmingPoolsBySigunguName
    }
    
    var body: some View {
        List {
            let sortedSwimmingPoolsBySigunguName = swimmingPoolsBySigunguName.sorted(by: districtSortingRule)
            ForEach(sortedSwimmingPoolsBySigunguName, id: \.key) { sigunguName, swimmingPoolsInSigungu in
                Section {
                    ForEach(swimmingPoolsInSigungu, id: \.id) { swimmingPool in
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
                    Text(sigunguName)
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            }
        }
        .navigationBarTitle(sidoName)
    }
    
    private func districtSortingRule(first: (key: String, value: [SwimmingPool]), second: (key: String, value: [SwimmingPool])) -> Bool {
        // 수원시 팔달구 -> sorting 기준 값은 수원시
        guard let firstMainDistrictName = first.key.components(separatedBy: " ").first,
              let secondMainDistrictName = second.key.components(separatedBy: " ").first else {
            return false
        }
        
        let firstMainDistrictType = String(firstMainDistrictName.suffix(1))
        let secondMainDistrictType = String(secondMainDistrictName.suffix(1))
        let districtTypePriorityOrder: [String: Int] = ["시": 0, "구": 1, "군": 2]
        if let firstDisctrictPriority = districtTypePriorityOrder[firstMainDistrictType],
           let secondDistrictPriority = districtTypePriorityOrder[secondMainDistrictType] {
            if firstDisctrictPriority == secondDistrictPriority {
                // 마지막 글자 우선 순위가 같으면 문자열 비교
                return firstMainDistrictName < secondMainDistrictName
            }
            return firstDisctrictPriority < secondDistrictPriority
        } else {
            return firstMainDistrictName < secondMainDistrictName
        }
    }
}

#Preview {
    let swimmingPools = MockFileKey.defaultValue
    let SidoSwimmingPoolListView = SidoSwimmingPoolListView(sidoName: "서울특별시",
                                                            swimmingPools: swimmingPools.filter {
        $0.sidoCode == "11"
    }, pinnedSwimmingPoolsKeys: .constant(["올림픽 공원 수영장"]))
        .environment(\.isTestEnverionment, true)
    return SidoSwimmingPoolListView
}

extension Dictionary {
    mutating func switchKey(fromKey: Key, toKey: Key) {
        if let entry = removeValue(forKey: fromKey) {
            self[toKey] = entry
        }
    }
}
