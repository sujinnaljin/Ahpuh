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
    @Binding var pinnedSwimmingPoolsKeys: [String]
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
                HStack {
                    Text("운영 시간")
                        .fontWeight(.semibold)
                    if let website = swimmingPool.website,
                       let url = URL(string: website) {
                        Link(destination: url) {
                            Image(systemName: "link")
                        }
                    }
                }
                .font(.title2)
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
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Spacer().frame(height: 20)
                        Text("현재 시점과 다른 정보가 있을 수 있어요! 정확한 정보는 상단의 사이트 링크를 확인해주세요.")
                        Text("수정이나 제안이 필요한가요? [이곳](https://forms.gle/kNLwLY9kDpiGHeX9A)에 제보해주세요.")
                    }
                    .font(.footnote)
                }
            }
        }
        .navigationBarTitle(swimmingPool.name ?? "")
        .toolbar {
            if let swimmingPoolName = swimmingPool.name {
                PinButtonView(swimmingPoolName: swimmingPoolName, 
                              pinImageName: (isToPin: "pin", isToUnpin: "pin.fill"),
                              pinnedSwimmingPoolsKeys: $pinnedSwimmingPoolsKeys)
            }
        }
    }
}



struct SwimmingPoolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let swimmingPool = MockFileKey.defaultValue.first!
        NavigationStack {
            SwimmingPoolDetailView(swimmingPool: swimmingPool,
                                   pinnedSwimmingPoolsKeys: .constant(["올림픽 공원 수영장"]))
        }
    }
}
