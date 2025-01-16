//
//  ContentView.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: PokemonViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    if let list = viewModel.pokemonList {
                        ForEach(list, id: \.self) { pokemon in
                            NavigationLink {
                                DetailView(viewModel: DetailViewModel(), url: pokemon.url)
                            } label: {
                                Text("\(pokemon.name)")
                                    .fontWeight(.bold)
                            }
                        }
                    } else {
                        ProgressView()
                    }
                }
            }
        }
        .task {
            await viewModel.fetchPokemons()
        }
        .padding()
    }
}

#Preview {
    ContentView(viewModel: PokemonViewModel())
}
