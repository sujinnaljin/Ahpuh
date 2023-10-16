//
//  SwimmingPool.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/13.
//

import Foundation
import SwiftUI

struct SwimmingPool: Decodable {
    let id: UUID = UUID()
    let name: String?
    let address: String?
    let operatingHoursPerDay: [DayOfWeek: [String]]? // monday : [1:00 ~ 2:00]
    let cleaningTime: String?
    let regularHolidays: String?
    let fees: [String : Int]?
    let additionalInfo: [String]?
    let website: String?
    let sidoCode: String?
    let sigunguCode: String?
   
    private enum CodingKeys: String, CodingKey {
        case name
        case address
        case operatingHoursPerDay
        case cleaningTime
        case regularHolidays
        case fees
        case additionalInfo
        case website
        case sidoCode
        case sigunguCode
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.address = try container.decodeIfPresent(String.self, forKey: .address)
        var operatingHoursPerDay: [DayOfWeek: [String]] = [:]
        let operatingHoursPerDayFromJson = try container.decodeIfPresent([String: [String]].self, forKey: .operatingHoursPerDay)
        operatingHoursPerDayFromJson?.forEach { dayOfWeek, operatingHours in
            let key = DayOfWeek.make(from: dayOfWeek)
            operatingHoursPerDay[key] = operatingHours
        }
        self.operatingHoursPerDay = operatingHoursPerDay
        self.cleaningTime = try container.decodeIfPresent(String.self, forKey: .cleaningTime)
        self.regularHolidays = try container.decodeIfPresent(String.self, forKey: .regularHolidays)
        self.fees = try container.decodeIfPresent([String : Int].self, forKey: .fees)
        self.additionalInfo = try container.decodeIfPresent([String].self, forKey: .additionalInfo)
        self.website = try container.decodeIfPresent(String.self, forKey: .website)
        self.sidoCode = try container.decodeIfPresent(String.self, forKey: .sidoCode)
        self.sigunguCode = try container.decodeIfPresent(String.self, forKey: .sigunguCode)
    }
}

enum DayOfWeek: Int, CaseIterable, Decodable {
    // [Sunday : 1, Monday : 2, Tuesday : 3, Wednesday : 4, Thursday : 5, Friday : 6, Saturday : 7]
    case monday = 2
    case tuesday = 3
    case wednesday = 4
    case thursday = 5
    case friday = 6
    case saturday = 7
    case sunday = 1
    case unknown = 8
    
    static func make(from dayOfWeek: String) -> Self {
        switch dayOfWeek {
        case "monday":
            return .monday
        case "tuesday":
            return .tuesday
        case "wednesday":
            return .wednesday
        case "thursday":
            return .thursday
        case "friday":
            return .friday
        case "saturday":
            return .saturday
        case "sunday":
            return .sunday
        default:
            return .unknown
        }
    }
    
    var weekdaySymbol: String {
        let formatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.locale = .init(identifier: "ko_KR")
            return formatter
        }()
        let weekdayIndex = self.rawValue - 1
        if formatter.shortWeekdaySymbols.count > weekdayIndex {
            return formatter.shortWeekdaySymbols[weekdayIndex]
        } else {
            return "unknown"
        }
    }
    
    var color: Color {
        switch self {
        case .saturday:
            return .blue
        case .sunday:
            return .red
        default:
            return .black
        }
    }
}
