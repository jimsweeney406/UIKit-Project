//
//  MockCoinDataService.swift
//  coincrypto
//
//  Created by James Sweeney on 3/2/25.
//

import Foundation

struct MockCoinDataService {
    func fetchCoins() async throws -> [Coin] {
        do {
            return try JSONDecoder().decode([Coin].self, from: MockData.mockCoinJSON)
        } catch {
            throw error
        }
    }
}
