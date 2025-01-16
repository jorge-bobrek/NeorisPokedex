//
//  PokemonViewModel.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import SwiftUI
import Foundation

@MainActor
class PokemonViewModel: ObservableObject {
    @Published var pokemonList: [Pokemon]?
    
    func fetchPokemons() async {
        let pokemonService = PokemonService()
        do {
            self.pokemonList = try await pokemonService.fetchPokemons()
        } catch {
            print(error)
        }
    }
}
