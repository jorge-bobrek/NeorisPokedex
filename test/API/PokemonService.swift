//
//  PokemonService.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import Foundation

class PokemonService {
    
    func fetchPokemons() async throws -> [Pokemon]? {
        let url = "https://pokeapi.co/api/v2/pokemon/"
        let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
        let response = try JSONDecoder().decode(APIResponse.self, from: data)
        return response.results
    }
    
}
