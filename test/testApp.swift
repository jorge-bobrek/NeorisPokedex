//
//  testApp.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import SwiftUI

@main
struct testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: PokemonViewModel())
        }
    }
}
