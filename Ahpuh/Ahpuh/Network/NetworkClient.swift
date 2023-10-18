//
//  NetworkClient.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/14.
//

import Foundation

struct NetworkClient {
    private let dataStoreUrl = "https://raw.githubusercontent.com/sujinnaljin/Ahpuh/main/Ahpuh/Ahpuh/Mock/SwimmingPools.json"
    
    func fetchSwimmingPools() async throws -> [SwimmingPool] {
        let url = URL(string: dataStoreUrl)!
        let request = URLRequest(url: url)
        let data = try await URLSession.shared.data(for: request).0
        let decodedData = try JsonParser.decode(of: data, to: [SwimmingPool].self)
        return decodedData
    }
}
