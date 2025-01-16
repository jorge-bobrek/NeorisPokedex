//
//  DetailViewModel.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import SwiftUI
import Foundation

@MainActor
class DetailViewModel: ObservableObject {
    @Published var detail: PokemonDetail?
    let detailService = PokemonDetailService()
    
    func fetchDetails(url: String) async {
        do {
            self.detail = try await detailService.fetchDetails(url: url)
        } catch {
            print(error)
        }
    }
}
