//
//  SwimmingPoolDetailView.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/13.
//

import SwiftUI
import Foundation
import UniformTypeIdentifiers

struct SwimmingPoolDetailView: View {
    
    let swimmingPool: SwimmingPool
    private let currentWeekDayRawValue: Int = Calendar.current.component(.weekday,
                                                                         from: Date())
    var body: some View {
        List {
            Section {
                ForEach(DayOfWeek.allCases.filter { $0 != .unknown }, id: \.self) { dayOfWeek in
                    let isToday = currentWeekDayRawValue == dayOfWeek.rawValue
                    HStack {
                        Text(dayOfWeek.weekdaySymbol)
                            .foregroundStyle(dayOfWeek.color)
                            .font(.headline)
                        if let operatingHours = swimmingPool.operatingHoursPerDay?[dayOfWeek],
                           !operatingHours.isEmpty {
                            ScrollView(.horizontal) {
                                Text(operatingHours.joined(separator: " / "))
                                    .font(.body)
                                    
                            }
                            .scrollIndicators(.hidden)
                        } else {
                            Text("휴무일")
                                .font(.body)
                        }
                    }
                    .listRowBackground(isToday ? Color.yellow : Color.white)
                }
            } header: {
                Text("운영 시간")
                    .font(.title2)
                    .fontWeight(.semibold)
            } footer: {
                VStack(alignment: .leading, spacing: 10) {
                    if let regularHolidays = swimmingPool.regularHolidays,
                       !regularHolidays.isEmpty {
                        Text("정기 휴일 : \(regularHolidays)")
                            .foregroundStyle(.red)
                            .bold()
                            .font(.headline)
                    }
                   
                    if let cleaningTime = swimmingPool.cleaningTime,
                       !cleaningTime.isEmpty {
                        Text("수질 관리 시간 : \(cleaningTime)")
                    }
                }
            }
            
            
            Section {
                if let fees = swimmingPool.fees {
                    ForEach(fees.sorted(by: >), id: \.key) { personType, price in
                        HStack {
                            Text(personType).font(.headline)
                            Text(price.description + "원")
                        }
                    }
                }
            } header: {
                if swimmingPool.fees != nil {
                    Text("요금")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            } footer: {
                VStack(alignment: .leading, spacing: 10) {
                    if let address = swimmingPool.address {
                        Spacer().frame(height: 10)
                        Text("주소")
                            .font(.callout).bold()
                        HStack {
                            Text(address).font(.subheadline)
                            Button {
                                UIPasteboard.general.setValue(address,
                                           forPasteboardType: UTType.plainText.identifier)
                            } label: {
                                Image(systemName: "doc.on.doc")
                                    .font(.subheadline)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                    if let phoneNumber = swimmingPool.phoneNumber {
                        Spacer().frame(height: 10)
                        Text("전화 번호")
                            .font(.callout).bold()
                        Button {
                            let phoneURL = "tel://" + phoneNumber
                            guard let url = URL(string: phoneURL) else { return }
                            UIApplication.shared.open(url)
                        } label: {
                            Text(phoneNumber).font(.subheadline)
                        }
                    }
                    if let additionalInfo = swimmingPool.additionalInfo,
                       !additionalInfo.isEmpty {
                        Spacer().frame(height: 10)
                        Text("기타 정보")
                            .font(.callout).bold()
                        ForEach(additionalInfo, id: \.self) { info in
                            Text("• " + info)
                                .font(.subheadline)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(swimmingPool.name ?? "")
        .toolbar {
            if let website = swimmingPool.website,
               let url = URL(string: website) {
                Link(destination: url) {
                    Image(systemName: "link")
                }
            }
        }
    }
}



struct SwimmingPoolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let swimmingPool = MockFileKey.defaultValue.first!
        NavigationStack {
            SwimmingPoolDetailView(swimmingPool: swimmingPool)
        }
    }
}
