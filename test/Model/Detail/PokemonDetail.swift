//
//  PokemonDetail.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

struct PokemonDetail: Decodable {
    let name: String
    let types: [PokemonType]
    let sprites: PokemonSprites
}

struct PokemonType: Decodable, Hashable {
    let type: PokemonTypeName
}

struct PokemonTypeName: Decodable, Hashable {
    let name: String
}

struct PokemonSprites: Decodable {
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case image = "front_default"
    }
}
