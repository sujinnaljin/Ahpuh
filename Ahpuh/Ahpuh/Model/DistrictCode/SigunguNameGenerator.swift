//
//  SigunguNameGenerator.swift
//  Ahpuh
//
//  Created by 강수진 on 10/19/23.
//

import Foundation

struct SigunguNameGenerator {
    static func name(bySidoCode sidoCode: String?, sigunguCode: String?) -> String? {
        guard let sidoCode,
              let sigunguCode,
              let sido = Sido(rawValue: sidoCode),
              let sigunguName = sigunguName(sigunnguCode: sigunguCode,
                                            in: sido) else {
            return nil
        }
        return sigunguName
    }
    
    private static func sigunguName(sigunnguCode: String?,
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
