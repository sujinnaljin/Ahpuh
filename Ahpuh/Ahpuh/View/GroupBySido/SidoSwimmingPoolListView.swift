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
    
    var body: some View {
        List {
            let swimmingPoolsBySigunguCode = Dictionary(grouping: swimmingPools,
                                                        by: { $0.sigunguCode }).sorted {
                guard let sigunguCode1 = $0.key,
                      let sigunguCode2 = $1.key else {
                    return false
                }
                  
                  return sigunguCode1 < sigunguCode2
              }
            
            ForEach(swimmingPoolsBySigunguCode, id: \.key) { sigunguCode, swimmingPoolsInSigungu in
                if let sidoCode = swimmingPoolsInSigungu.first?.sidoCode,
                   let sido = Sido(rawValue: sidoCode),
                   let sigunguCode,
                   let sigunguName = sigunguName(sigunnguCode: sigunguCode,
                                                 in: sido) {
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
        }
        .navigationBarTitle(sidoName)
    }
    
    private func sigunguName(sigunnguCode: String?,
                             in sido: Sido?) -> String? {
        guard let sigunnguCode,
              let sido else {
            return nil
        }
        switch sido {
        case .seoul:
            return SeoulSigungu(rawValue: sigunnguCode)?.name
        case .busan:
            return BusanSigungu(rawValue: sigunnguCode)?.name
        case .daegu:
            return DaeguSigungu(rawValue: sigunnguCode)?.name
        case .incheon:
            return IncheonSigungu(rawValue: sigunnguCode)?.name
        case .gwangju:
            return GwangjuSigungu(rawValue: sigunnguCode)?.name
        case .daejeon:
            return DaejeonSigungu(rawValue: sigunnguCode)?.name
        case .ulsan:
            return UlsanSigungu(rawValue: sigunnguCode)?.name
        case .sejong:
            return SejongSigungu(rawValue: sigunnguCode)?.name
        case .gyeonggi:
            return GyeonggiSigungu(rawValue: sigunnguCode)?.name
        case .gangwon:
            return GangwonSigungu(rawValue: sigunnguCode)?.name
        case .chungbuk:
            return ChungbukSigungu(rawValue: sigunnguCode)?.name
        case .chungnnam:
            return ChungnnamSigungu(rawValue: sigunnguCode)?.name
        case .jeonbuk:
            return JeonbukSigungu(rawValue: sigunnguCode)?.name
        case .jeonnam:
            return JeonnamSigungu(rawValue: sigunnguCode)?.name
        case .gyeongbuk:
            return GyeongbukSigungu(rawValue: sigunnguCode)?.name
        case .gyeongnam:
            return GyeongnamSigungu(rawValue: sigunnguCode)?.name
        case .jeju:
            return JejuSigungu(rawValue: sigunnguCode)?.name
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
