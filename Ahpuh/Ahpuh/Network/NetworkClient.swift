//
//  NetworkClient.swift
//  Ahpuh
//
//  Created by 강수진 on 2023/10/14.
//

import Foundation

struct SwimmingPoolClient {
    private let url = "https://raw.githubusercontent.com/sujinnaljin/Ahpuh/main/Ahpuh/Ahpuh/Mock/SwimmingPools.json"
    
    func fetchSwimmingPools() async throws -> [SwimmingPool] {
        return try await NetworkClient.fetchData(urlString: url)
    }
}

struct VersionUpdateInfoClient {
    private let url = "https://raw.githubusercontent.com/sujinnaljin/Ahpuh/main/Ahpuh/Ahpuh/Mock/VersionUpdateInfos.json"
    
    func fetchVersionUpdateInfos() async throws -> [VersionUpdateInfo] {
        return try await NetworkClient.fetchData(urlString: url)
    }
}

struct NetworkClient {
    static func fetchData<T: Decodable>(urlString: String) async throws -> T {
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let data = try await URLSession.shared.data(for: request).0
        let decodedData = try JsonParser.decode(of: data, to: T.self)
        return decodedData
    }
}
