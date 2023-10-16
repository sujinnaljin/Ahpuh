//
//  Sido.swift
//  Ahpuh
//
//  Created by 강수진 on 10/16/23.
//

import Foundation

enum Sido: String {
    case seoul = "11"
    case busan = "21"
    case daegu = "22"
    case incheon = "23"
    case gwangju = "24"
    case daejeon = "25"
    case ulsan = "26"
    case sejong = "29"
    case gyeonggi = "31"
    case gangwon = "32"
    case chungbuk = "33"
    case chungnnam = "34"
    case jeonbuk = "35"
    case jeonnam = "36"
    case gyeongbuk = "37"
    case gyeongnam = "38"
    case jeju = "39"
    
    var name: String {
        switch self {
        case .seoul:
            return "서울특별시"
        case .busan:
            return "부산광역시"
        case .daegu:
            return "대구광역시"
        case .incheon:
            return "인천광역시"
        case .gwangju:
            return "광주광역시"
        case .daejeon:
            return "대전광역시"
        case .ulsan:
            return "울산광역시"
        case .sejong:
            return "세종특별자치시"
        case .gyeonggi:
            return "경기도"
        case .gangwon:
            return "강원도"
        case .chungbuk:
            return "충청북도"
        case .chungnnam:
            return "충청남도"
        case .jeonbuk:
            return "전라북도"
        case .jeonnam:
            return "전라남도"
        case .gyeongbuk:
            return "경상북도"
        case .gyeongnam:
            return "경상남도"
        case .jeju:
            return "제주특별자치도"
        }
    }
}
