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
    static let sido: Sido = .busan
    
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
    static let sido: Sido = .daegu
    
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
    static let sido: Sido = .incheon
    
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
    static let sido: Sido = .gwangju
  
    case dongGu = "010"
    case seoGu = "020"
    case namGu = "030"
    case bukGu = "040"
    case gwangsanGu = "050"
    
    var name: String {
        switch self {
        case .dongGu:
            return "동구"
        case .seoGu:
            return "서구"
        case .namGu:
            return "남구"
        case .bukGu:
            return "북구"
        case .gwangsanGu:
            return "광산구"
        }
    }
}


enum DaejeonSigungu: String, Sigungu {
    static let sido: Sido = .daejeon
    
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
    static let sido: Sido = .ulsan
    
    case jungGu = "010"
    case namGu = "020"
    case dongGu = "030"
    case bukGu = "040"
    case uljuGun = "510"
    
    var name: String {
        switch self {
        case .jungGu:
            return "중구"
        case .namGu:
            return "남구"
        case .dongGu:
            return "동구"
        case .bukGu:
            return "북구"
        case .uljuGun:
            return "울주군"
        }
    }
}

enum SejongSigungu: String, Sigungu {
    static let sido: Sido = .sejong
    
    case sejongsi = "010"
    var name: String {
        switch self {
        case .sejongsi:
            return "세종시"
        }
    }
}

enum GyeonggiSigungu: String, Sigungu {
    static let sido: Sido = .gyeonggi
    
    case suwonSi_janganGu = "011"
    case suwonSi_gwonseonGu = "012"
    case suwonSi_paldalGu = "013"
    case suwonSi_yeongtonglGu = "014"
    
    case seongnamSi_sujeongGu = "021"
    case seongnamSi_jungwonGu = "022"
    case seongnamSi_bundangGu = "023"
    
    case uijeongbuSi = "030"
    
    case anyangSi_mananGu = "041"
    case anyangSi_donganGu = "042"
    
    case bucheonSi = "050"
    case gwangmyeongSi = "060"
    case pyeongtaekSi = "070"
    case dongducheonSi = "080"
    
    case ansanSi_sangnokGu = "091"
    case ansanSi_danwonGu = "092"
    
    case goyangSi_deokyangGu = "101"
    case goyangSi_ilsandongGu = "103"
    case goyangSi_ilsanseoGu = "104"
    
    case gwacheonSi = "110"
    case guriSi = "120"
    case namyangjuSi = "130"
    case osanSi = "140"
    case siheungSi = "150"
    case gunpoSi = "160"
    case uiwangSi = "170"
    case hanamSi = "180"
    
    case yonginSi_cheoinGu = "191"
    case yonginSi_giheungGu = "192"
    case yonginSi_sujiGu = "193"
    
    case pajuSi = "200"
    case icheonSi = "210"
    case anseongSi = "220"
    case gimpoSi = "230"
    case hwaseongSi = "240"
    case gwangjuSi = "250"
    case yangjuSi = "260"
    case pocheonSi = "270"
    case yeojuSi = "280"
    
    case yeoncheonGun = "550"
    case gapyeongGun = "570"
    case yangpyeongGun = "580"
    
    var name: String {
        switch self {
        case .suwonSi_janganGu:
            return "수원시 장안구"
        case .suwonSi_gwonseonGu:
            return "수원시 권선구"
        case .suwonSi_paldalGu:
            return "수원시 팔달구"
        case .suwonSi_yeongtonglGu:
            return "수원시 영통구"
        case .seongnamSi_sujeongGu:
            return "성남시 수정구"
        case .seongnamSi_jungwonGu:
            return "성남시 중원구"
        case .seongnamSi_bundangGu:
            return "성남시 분당구"
        case .uijeongbuSi:
            return "의정부시"
        case .anyangSi_mananGu:
            return "안양시 만안구"
        case .anyangSi_donganGu:
            return "안양시 동안구"
        case .bucheonSi:
            return "부천시"
        case .gwangmyeongSi:
            return "광명시"
        case .pyeongtaekSi:
            return "평택시"
        case .dongducheonSi:
            return "동두천시"
        case .ansanSi_sangnokGu:
            return "안산시 상록구"
        case .ansanSi_danwonGu:
            return "안산시 단원구"
        case .goyangSi_deokyangGu:
            return "고양시 덕양구"
        case .goyangSi_ilsandongGu:
            return "고양시 일산동구"
        case .goyangSi_ilsanseoGu:
            return "고양시 일산서구"
        case .gwacheonSi:
            return "과천시"
        case .guriSi:
            return "구리시"
        case .namyangjuSi:
            return "남양주시"
        case .osanSi:
            return "오산시"
        case .siheungSi:
            return "시흥시"
        case .gunpoSi:
            return "군포시"
        case .uiwangSi:
            return "의왕시"
        case .hanamSi:
            return "하남시"
        case .yonginSi_cheoinGu:
            return "용인시 처인구"
        case .yonginSi_giheungGu:
            return "용인시 기흥구"
        case .yonginSi_sujiGu:
            return "용인시 수지구"
        case .pajuSi:
            return "파주시"
        case .icheonSi:
            return "이천시"
        case .anseongSi:
            return "안성시"
        case .gimpoSi:
            return "김포시"
        case .hwaseongSi:
            return "화성시"
        case .gwangjuSi:
            return "광주시"
        case .yangjuSi:
            return "양주시"
        case .pocheonSi:
            return "포천시"
        case .yeojuSi:
            return "여주시"
        case .yeoncheonGun:
            return "연천군"
        case .gapyeongGun:
            return "가평군"
        case .yangpyeongGun:
            return "양평군"
        }
    }
}

enum GangwonSigungu: String, Sigungu {
    static let sido: Sido = .chungbuk
    
    case chuncheonSi = "010"
    case wonjuSi = "020"
    case gangneungSi = "030"
    case donghaeSi = "040"
    case taebaekSi = "050"
    case sokchoSi = "060"
    case samcheokSi = "070"
    
    case hongcheonGun = "510"
    case hoengseongGun = "520"
    case yeongwolGun = "530"
    case pyeongchangGun = "540"
    case jeongsunGun = "550"
    case cheolwonGun = "560"
    case hwacheonGun = "570"
    case yangguGun = "580"
    case injeGun = "590"
    case gosungGun = "600"
    case yangyangGun = "610"
    
    var name: String {
        switch self {
        case .chuncheonSi:
            return "춘천시"
        case .wonjuSi:
            return "원주시"
        case .gangneungSi:
            return "강릉시"
        case .donghaeSi:
            return "동해시"
        case .taebaekSi:
            return "태백시"
        case .sokchoSi:
            return "속초시"
        case .samcheokSi:
            return "삼척시"
        case .hongcheonGun:
            return "홍천군"
        case .hoengseongGun:
            return "횡성군"
        case .yeongwolGun:
            return "영월군"
        case .pyeongchangGun:
            return "평창군"
        case .jeongsunGun:
            return "정선군"
        case .cheolwonGun:
            return "철원군"
        case .hwacheonGun:
            return "화천군"
        case .yangguGun:
            return "양구군"
        case .injeGun:
            return "인제군"
        case .gosungGun:
            return "고성군"
        case .yangyangGun:
            return "양양군"
        }
    }
}

enum ChungbukSigungu: String, Sigungu {
    static let sido: Sido = .chungbuk
    
    case chungjuSi = "020"
    case jecheonSi = "030"
    
    case cheongjuSi_sangdangGu = "041"
    case cheongjuSi_seowonGu = "042"
    case cheongjuSi_heungdeokGu = "043"
    case cheongjuSi_cheongwonGu = "044"
    
    case boeunGun = "520"
    case okcheonGun = "530"
    case yeongdongGun = "540"
    case jincheonGun = "550"
    case goesanGun = "560"
    case eumseongGun = "570"
    case danyangGun = "580"
    case jeungpyeongGun = "590"
    
    var name: String {
        switch self {
        case .chungjuSi:
            return "청주시"
        case .jecheonSi:
            return "제천시"
        case .cheongjuSi_sangdangGu:
            return "청주시 상당구"
        case .cheongjuSi_seowonGu:
            return "청주시 서원구"
        case .cheongjuSi_heungdeokGu:
            return "청주시 흥덕구"
        case .cheongjuSi_cheongwonGu:
            return "청주시 청원구"
        case .boeunGun:
            return "보은군"
        case .okcheonGun:
            return "옥천군"
        case .yeongdongGun:
            return "영동군"
        case .jincheonGun:
            return "진천군"
        case .goesanGun:
            return "괴산군"
        case .eumseongGun:
            return "음성군"
        case .danyangGun:
            return "단양군"
        case .jeungpyeongGun:
            return "증평군"
        }
    }
}

enum ChungnnamSigungu: String, Sigungu {
    static let sido: Sido = .chungnnam
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum JeonbukSigungu: String, Sigungu {
    static let sido: Sido = .jeonbuk
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum JeonnamSigungu: String, Sigungu {
    static let sido: Sido = .jeonnam
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum GyeongbukSigungu: String, Sigungu {
    static let sido: Sido = .gyeongbuk
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum GyeongnamSigungu: String, Sigungu {
    static let sido: Sido = .gyeongnam
    
    case Gu = ""
    var name: String {
        switch self {
        case .Gu:
            return ""
        }
    }
}

enum JejuSigungu: String, Sigungu {
    static let sido: Sido = .jeju
    
    case jejuSi = "010"
    case seogwipoSi = "020"

    var name: String {
        switch self {
        case .jejuSi:
            return "제주시"
        case .seogwipoSi:
            return "서귀포시"
        }
    }
}
