//
//  SigunguNameGenerator.swift
//  Ahpuh
//
//  Created by 강수진 on 10/19/23.
//

import Foundation

struct SigunguNameGenerator {
    
    static func name(sigunguCode: String?,
                     sidoCode: String?) -> String? {
        guard let sidoCode,
              let sigunguCode,
              let sido = Sido(rawValue: sidoCode) else {
            return nil
        }
        switch sido {
        case .seoul:
            return SeoulSigungu(rawValue: sigunguCode)?.name
        case .busan:
            return BusanSigungu(rawValue: sigunguCode)?.name
        case .daegu:
            return DaeguSigungu(rawValue: sigunguCode)?.name
        case .incheon:
            return IncheonSigungu(rawValue: sigunguCode)?.name
        case .gwangju:
            return GwangjuSigungu(rawValue: sigunguCode)?.name
        case .daejeon:
            return DaejeonSigungu(rawValue: sigunguCode)?.name
        case .ulsan:
            return UlsanSigungu(rawValue: sigunguCode)?.name
        case .sejong:
            return SejongSigungu(rawValue: sigunguCode)?.name
        case .gyeonggi:
            return GyeonggiSigungu(rawValue: sigunguCode)?.name
        case .gangwon:
            return GangwonSigungu(rawValue: sigunguCode)?.name
        case .chungbuk:
            return ChungbukSigungu(rawValue: sigunguCode)?.name
        case .chungnnam:
            return ChungnnamSigungu(rawValue: sigunguCode)?.name
        case .jeonbuk:
            return JeonbukSigungu(rawValue: sigunguCode)?.name
        case .jeonnam:
            return JeonnamSigungu(rawValue: sigunguCode)?.name
        case .gyeongbuk:
            return GyeongbukSigungu(rawValue: sigunguCode)?.name
        case .gyeongnam:
            return GyeongnamSigungu(rawValue: sigunguCode)?.name
        case .jeju:
            return JejuSigungu(rawValue: sigunguCode)?.name
        }
    }
}
