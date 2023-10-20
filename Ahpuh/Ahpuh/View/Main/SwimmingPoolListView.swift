//
//  SwimmingPoolListView.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/14.
//

import SwiftUI

struct SwimmingPoolListView: View {
    
    @Environment(\.isTestEnverionment) var isTestEnverionment
    @Environment(\.mockFile) var mockFile
    @AppStorage("pinnedSwimmingPoolsKeys") var pinnedSwimmingPoolsKeys = [""]
    @State private var swimmingPools: [SwimmingPool] = []
    @State private var error: Error?
    
    private let navigationBarTitle: String = "🏊🏻‍♀️🏊🏽‍♂️ 오늘도 행수! 🏊🏼🏊🏼‍♀️"
    private var errorMessage: String? {
        guard let error else {
            return nil
        }
        if error is JsonParserError {
            return "개발자가 데이터를 잘못 넣어서 문제가 발생했어요! 😵\n수정할 동안 기본으로 저장된 데이터를 보여드릴게요."
        } else {
            return "네트워크 등의 문제가 발생했어요! 😵\n대신 기본으로 저장된 데이터를 보여드릴게요."
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    if error != nil,
                       let errorMessage {
                        Text(errorMessage)
                            .font(.footnote)
                            .listRowBackground(Color.clear)
                    }
                    PinnedSection(swimmingPools: swimmingPools,
                                  pinnedSwimmingPoolsKeys: $pinnedSwimmingPoolsKeys)
                    
                    let swimmingPoolsBySidoCode = Dictionary(grouping: swimmingPools,
                                                             by: { $0.sidoCode }).sorted {
                        guard let sidoCode1 = $0.key,
                              let sidoCode2 = $1.key else {
                                  return false
                              }
                        
                        return sidoCode1 < sidoCode2
                    }
                    Section {
                        ForEach(swimmingPoolsBySidoCode, id: \.key) { sidoCode, swimmingPoolsInSido in
                            if let sidoCode,
                               let sidoName = Sido(rawValue:sidoCode)?.name {
                                NavigationLink(sidoName) {
                                    SidoSwimmingPoolListView(sidoName: sidoName,
                                                             swimmingPools: swimmingPoolsInSido,
                                                             pinnedSwimmingPoolsKeys: $pinnedSwimmingPoolsKeys)
                                }
                            }
                        }
                    } header: {
                        Text("지역별 수영장")
                            .font(.title2)
                            .fontWeight(.semibold)
                    } footer: {
                        Text("앞으로 더 많은 수영장 정보가 추가될 예정이에요!\n먼저 추가되길 원하는 지역이 있다면 앱스토어에서 댓글을 남겨주세요 ☺️")
                            .font(.footnote)
                            .padding(.top, 16)
                    }
                }
            }
            .navigationBarTitle(navigationBarTitle)
        }
        .onAppear {
            Task {
                let swimmingPools: [SwimmingPool]
                if isTestEnverionment {
                    swimmingPools = mockFile
                }  else {
                    do {
                        swimmingPools = try await NetworkClient().fetchSwimmingPools()
                    } catch {
                        self.error = error
                        swimmingPools = mockFile
                    }
                }
                self.swimmingPools = swimmingPools.sorted {
                    $0.name ?? "" < $1.name ?? ""
                }
            }
        }
    }
}

#Preview {
    SwimmingPoolListView()
        .environment(\.isTestEnverionment, true)
}
