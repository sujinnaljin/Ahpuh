//
//  Sigungu.swift
//  Ahpuh
//
//  Created by 강수진 on 10/16/23.
//

import Foundation

protocol Sigungu {
    static var sido: Sido { get }
}

enum SeoulSigungu: String, Sigungu {
    static let sido: Sido = .seoul
    
    case jonnoGu = "010"
    case jungGu = "020"
    case yongsanGu = "030"
    case seongdongGu = "040"
    case gwangjinGu = "050"
    case dongdaemunGu = "060"
    case jungnangGu = "070"
    case seongbukGu = "080"
    case gangbukGu = "090"
    case dobongGu = "100"
    case nowonGu = "110"
    case eunpyungGu = "120"
    case seodaemunGu = "130"
    case mapoGu = "140"
    case yangcheonGu = "150"
    case gangseoGu = "160"
    case guroGu = "170"
    case geumcheonGu = "180"
    case yeongdeungpoGu = "190"
    case dongjakGu = "200"
    case gwanakGu = "210"
    case seochoGu = "220"
    case gangnamGu = "230"
    case songpaGu = "240"
    case gangdongGu = "250"
    
    var name: String {
        switch self {
        case .jonnoGu:
            return "종로구"
        case .jungGu:
            return "중구"
        case .yongsanGu:
            return "용산구"
        case .seongdongGu:
            return "성동구"
        case .gwangjinGu:
            return "광진구"
        case .dongdaemunGu:
            return "동대문구"
        case .jungnangGu:
            return "중랑구"
        case .seongbukGu:
            return "성북구"
        case .gangbukGu:
            return "강북구"
        case .dobongGu:
            return "도봉구"
        case .nowonGu:
            return "노원구"
        case .eunpyungGu:
            return "은평구"
        case .seodaemunGu:
            return "서대문구"
        case .mapoGu:
            return "마표구"
        case .yangcheonGu:
            return "양천구"
        case .gangseoGu:
            return "강서구"
        case .guroGu:
            return "구로구"
        case .geumcheonGu:
            return "금천구"
        case .yeongdeungpoGu:
            return "영등포구"
        case .dongjakGu:
            return "동작구"
        case .gwanakGu:
            return "관악구"
        case .seochoGu:
            return "서초구"
        case .gangnamGu:
            return "강남구"
        case .songpaGu:
            return "송파구"
        case .gangdongGu:
            return "강동구"
        }
    }
}

enum BusanSigungu: String, Sigungu {
    static var sido: Sido = .busan
    
    case jungGu = "010"
    case seoGu = "020"
    case dongGu = "030"
    case yeongdoGu = "040"
    case busanjinGu = "050"
    case dongraeGu = "060"
    case namGu = "070"
    case bukGu = "080"
    case haeundaeGu = "090"
    case sahaGu = "100"
    case geumjeongGu = "110"
    case gangseoGu = "120"
    case yeonjeGu = "130"
    case suyeongGu = "140"
    case sasangGu = "150"
    case gijangGun = "510"
    
    var name: String {
        switch self {
        case .jungGu:
            return "중구"
        case .seoGu:
            return "서구"
        case .dongGu:
            return "동구"
        case .yeongdoGu:
            return "영도구"
        case .busanjinGu:
            return "부산진구"
        case .dongraeGu:
            return "동래구"
        case .namGu:
            return "남구"
        case .bukGu:
            return "북구"
        case .haeundaeGu:
            return "해운대구"
        case .sahaGu:
            return "사하구"
        case .geumjeongGu:
            return "금정구"
        case .gangseoGu:
            return "강서구"
        case .yeonjeGu:
            return "연제구"
        case .suyeongGu:
            return "수영구"
        case .sasangGu:
            return "사상구"
        case .gijangGun:
            return "기장군"
        }
    }
}

enum DaeguSigungu: String, Sigungu {
    static var sido: Sido = .daegu
    
    case jungGu = "010"
    case dongGu = "020"
    case seoGu = "030"
    case namGu = "040"
    case bukGu = "050"
    case suseongGu = "060"
    case dalseoGu = "070"
    case dalseongGun = "510"
    
    var name: String {
        switch self {
        case .jungGu:
            return "중구"
        case .dongGu:
            return "동구"
        case .seoGu:
            return "서구"
        case .namGu:
            return "남구"
        case .bukGu:
            return "북구"
        case .suseongGu:
            return "수성구"
        case .dalseoGu:
            return "달서구"
        case .dalseongGun:
            return "달성군"
        }
    }
}

enum IncheonSigungu: String, Sigungu {
    static var sido: Sido = .incheon
    
    case jungGu = "010"
    case dongGu = "020"
    case yeonsuGu = "040"
    case namdongGu = "050"
    case bupyeongGu = "060"
    case gyeyangGu = "070"
    case seoGu = "080"
    case michuholGu = "090"
    case ganghwaGun = "510"
    case ongjinGun = "520"
    
    var name: String {
        switch self {
        case .jungGu:
            return "중구"
        case .dongGu:
            return "동구"
        case .yeonsuGu:
            return "연수구"
        case .namdongGu:
            return "남동구"
        case .bupyeongGu:
            return "부평구"
        case .gyeyangGu:
            return "계양구"
        case .seoGu:
            return "서구"
        case .michuholGu:
            return "미추홀구"
        case .ganghwaGun:
            return "강화군"
        case .ongjinGun:
            return "옹진군"
        }
    }
}

enum GwangjuSigungu: String, Sigungu {
    static var sido: Sido = .gwangju
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}


enum DaejeonSigungu: String, Sigungu {
    static var sido: Sido = .daejeon
    
    case dongGu = "010"
    case jungGu = "020"
    case seoGu = "030"
    case yuseongGu = "040"
    case daedeokGu = "050"
    
    var name: String {
        switch self {
        case .dongGu:
            return "동구"
        case .jungGu:
            return "중구"
        case .seoGu:
            return "서구"
        case .yuseongGu:
            return "유성구"
        case .daedeokGu:
            return "대덕구"
        }
    }
}


enum UlsanSigungu: String, Sigungu {
    static var sido: Sido = .ulsan
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum SejongSigungu: String, Sigungu {
    static var sido: Sido = .sejong
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum GyeonggiSigungu: String, Sigungu {
    static var sido: Sido = .gyeonggi
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum GangwonSigungu: String, Sigungu {
    static var sido: Sido = .chungbuk
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum ChungbukSigungu: String, Sigungu {
    static var sido: Sido = .chungbuk
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum ChungnnamSigungu: String, Sigungu {
    static var sido: Sido = .chungnnam
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum JeonbukSigungu: String, Sigungu {
    static var sido: Sido = .jeonbuk
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum JeonnamSigungu: String, Sigungu {
    static var sido: Sido = .jeonnam
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum GyeongbukSigungu: String, Sigungu {
    static var sido: Sido = .gyeongbuk
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum GyeongnamSigungu: String, Sigungu {
    static var sido: Sido = .gyeongnam
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum JejuSigungu: String, Sigungu {
    static var sido: Sido = .jeju
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}
