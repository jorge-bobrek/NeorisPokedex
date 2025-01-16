//
//  DetailService.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import Foundation

class PokemonDetailService {
    
    func fetchDetails(url: String) async throws -> PokemonDetail? {
        let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
        let response = try JSONDecoder().decode(PokemonDetail.self, from: data)
        return response
    }
    
}

