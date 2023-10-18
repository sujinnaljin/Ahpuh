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
    
    case cheonanSi_dongnamGu = "011"
    case cheonanSi_seobukgu = "012"
    
    case gongjuSi = "020"
    case boryeongSi = "030"
    case asanSi = "040"
    case seosanSi = "050"
    case nonsanSi = "060"
    case gyeryongSi = "070"
    case dangjinSi = "080"
    
    case geumsanGun = "510"
    case buyeoGun = "530"
    case seocheonGun = "540"
    case cheongyangGun = "550"
    case hongseongGun = "560"
    case yesanGun = "570"
    case taeanGun = "580"
    
    var name: String {
        switch self {
        case .cheonanSi_dongnamGu:
            return "천안시 동남구"
        case .cheonanSi_seobukgu:
            return "천안시 서북구"
        case .gongjuSi:
            return "공주시"
        case .boryeongSi:
            return "보령시"
        case .asanSi:
            return "아산시"
        case .seosanSi:
            return "서산시"
        case .nonsanSi:
            return "논산시"
        case .gyeryongSi:
            return "계룡시"
        case .dangjinSi:
            return "당진시"
        case .geumsanGun:
            return "금산군"
        case .buyeoGun:
            return "부여군"
        case .seocheonGun:
            return "서천군"
        case .cheongyangGun:
            return "청양군"
        case .hongseongGun:
            return "홍성군"
        case .yesanGun:
            return "예산군"
        case .taeanGun:
            return "태안군"
        }
    }
}

enum JeonbukSigungu: String, Sigungu {
    static let sido: Sido = .jeonbuk
    
    case jeonjuSi_wansanGu = "011"
    case jeonjuSi_deokjinGu = "012"
    
    case gunsanSi = "020"
    case iksanSi = "030"
    case jeongeupSi = "040"
    case namwonSi = "050"
    case gimjeSi = "060"
    
    case wanjuGun = "510"
    case jinanGun = "520"
    case mujuGun = "530"
    case jangsuGun = "540"
    case imsilGun = "550"
    case sunchangGun = "560"
    case gochangGun = "570"
    case buanGun = "580"

    var name: String {
        switch self {
        case .jeonjuSi_wansanGu:
            return "전주시 완산구"
        case .jeonjuSi_deokjinGu:
            return "전주시 덕진구"
        case .gunsanSi:
            return "군산시"
        case .iksanSi:
            return "익산시"
        case .jeongeupSi:
            return "정읍시"
        case .namwonSi:
            return "남원시"
        case .gimjeSi:
            return "김제시"
        case .wanjuGun:
            return "완주ㅜ군"
        case .jinanGun:
            return "진안군"
        case .mujuGun:
            return "무주군"
        case .jangsuGun:
            return "장수군"
        case .imsilGun:
            return "임실군"
        case .sunchangGun:
            return "순창군"
        case .gochangGun:
            return "고창군"
        case .buanGun:
            return "부안군"
        }
    }
}

enum JeonnamSigungu: String, Sigungu {
    static let sido: Sido = .jeonnam
    
    case mokpoSi = "010"
    case yeosuSi = "020"
    case suncheonSi = "030"
    case najuSi = "040"
    case gwangyangSi = "060"
    
    case damyangGun = "510"
    case gokseongGun = "520"
    case guryeGun = "530"
    case goheungGun = "550"
    case boseongGun = "560"
    case hwasunGun = "570"
    case jangheungGun = "580"
    case gangjinGun = "590"
    case haenamGun = "600"
    case yeongamGun = "610"
    case muanGun = "620"
    case hampyeongGun = "630"
    case yeonggwangGun = "640"
    case jangseongGun = "650"
    case wandoGun = "660"
    case jindoGun = "670"
    case sinanGun = "680"
    
    var name: String {
        switch self {
        case .mokpoSi:
            return "목포시"
        case .yeosuSi:
            return "여수시"
        case .suncheonSi:
            return "순천시"
        case .najuSi:
            return "나주시"
        case .gwangyangSi:
            return "광양시"
        case .damyangGun:
            return "담양군"
        case .gokseongGun:
            return "곡성군"
        case .guryeGun:
            return "구례군"
        case .goheungGun:
            return "고흥군"
        case .boseongGun:
            return "보성군"
        case .hwasunGun:
            return "화순군"
        case .jangheungGun:
            return "장흥군"
        case .gangjinGun:
            return "강진군"
        case .haenamGun:
            return "해남군"
        case .yeongamGun:
            return "영암군"
        case .muanGun:
            return "무안군"
        case .hampyeongGun:
            return "함평군"
        case .yeonggwangGun:
            return "영광군"
        case .jangseongGun:
            return "장성군"
        case .wandoGun:
            return "완도군"
        case .jindoGun:
            return "진도군"
        case .sinanGun:
            return "신안군"
        }
    }
}

enum GyeongbukSigungu: String, Sigungu {
    static let sido: Sido = .gyeongbuk
    
    case pohangSi_namGu = "011"
    case pohangSi_bukGu = "012"
    case gyeongjuSi = "020"
    case gimcheonSi = "030"
    case andongSi = "040"
    case gumiSi = "050"
    case yeongjuSi = "060"
    case yeongcheonSi = "070"
    case sangjuSi = "080"
    case mungyeongSi = "090"
    case gyeongsanSi = "100"
    
    case gunwiGun = "510"
    case uiseongGun = "520"
    case cheongsongGun = "530"
    case yeongyangGun = "540"
    case yeongdeokGun = "550"
    case cheongdoGun = "560"
    case goryeongGun = "570"
    case seongjuGun = "580"
    case chilgokGun = "590"
    case yecheonGun = "600"
    case bonghwaGun = "610"
    case uljinGun = "620"
    case ulleungGun = "630"
    
    var name: String {
        switch self {
        case .pohangSi_namGu:
            return "포항시 남구"
        case .pohangSi_bukGu:
            return "포항시 북구"
        case .gyeongjuSi:
            return "경주시"
        case .gimcheonSi:
            return "김천시"
        case .andongSi:
            return "안동시"
        case .gumiSi:
            return "구미시"
        case .yeongjuSi:
            return "영주시"
        case .yeongcheonSi:
            return "영천시"
        case .sangjuSi:
            return "상주시"
        case .mungyeongSi:
            return "문경시"
        case .gyeongsanSi:
            return "경산시"
        case .gunwiGun:
            return "군위군"
        case .uiseongGun:
            return "의성군"
        case .cheongsongGun:
            return "청송군"
        case .yeongyangGun:
            return "영양군"
        case .yeongdeokGun:
            return "영덕군"
        case .cheongdoGun:
            return "청도군"
        case .goryeongGun:
            return "고령군"
        case .seongjuGun:
            return "성주군"
        case .chilgokGun:
            return "칠곡군"
        case .yecheonGun:
            return "예천군"
        case .bonghwaGun:
            return "봉화군"
        case .uljinGun:
            return "울진군"
        case .ulleungGun:
            return "울릉군"
        }
    }
}

enum GyeongnamSigungu: String, Sigungu {
    static let sido: Sido = .gyeongnam
    
    case jinjuSi = "030"
    case tongyeongSi = "050"
    case sacheonSi = "060"
    case gimhaeSi = "070"
    case miryangSi = "080"
    case geojeSi = "090"
    case yangsanSi = "100"

    case changwonSi_uichangGu = "111"
    case changwonSi_seongsanGu = "112"
    case changwonSi_masanhappoGu = "113"
    case changwonSi_masanhoewonGu = "114"
    case changwonSi_jinhaeGu = "115"
    
    case uiryeongGun = "510"
    case hamanGun = "520"
    case changnyeongGun = "530"
    case goseongGun = "540"
    case namhaeGun = "550"
    case hadongGun = "560"
    case samcheongGun = "570"
    case hamyangGun = "580"
    case geochangGun = "590"
    case hapcheonGun = "600"

    var name: String {
        switch self {
        case .jinjuSi:
            return "진주시"
        case .tongyeongSi:
            return "통영시"
        case .sacheonSi:
            return "사천시"
        case .gimhaeSi:
            return "김해시"
        case .miryangSi:
            return "밀양시"
        case .geojeSi:
            return "거제시"
        case .yangsanSi:
            return "양산시"
        case .changwonSi_uichangGu:
            return "창원시 의창구"
        case .changwonSi_seongsanGu:
            return "창원시 성산구"
        case .changwonSi_masanhappoGu:
            return "창원시 마산합포구"
        case .changwonSi_masanhoewonGu:
            return "창원시 마회원구"
        case .changwonSi_jinhaeGu:
            return "창원시 진해구"
        case .uiryeongGun:
            return "의령군"
        case .hamanGun:
            return "군"
        case .changnyeongGun:
            return "창녕군"
        case .goseongGun:
            return "고성군"
        case .namhaeGun:
            return "남해군"
        case .hadongGun:
            return "하동군"
        case .samcheongGun:
            return "산청군"
        case .hamyangGun:
            return "함양군"
        case .geochangGun:
            return "거창군"
        case .hapcheonGun:
            return "합천군"
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
