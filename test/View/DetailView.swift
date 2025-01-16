//
//  DetailView.swift
//  test
//
//  Created by Jorge Bobrek on 16/01/25.
//

import SwiftUI

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel
    let url: String
    
    var body: some View {
        VStack {
            if let detail = viewModel.detail {
                Text(detail.name)
                AsyncImage(url: URL(string: detail.sprites.image)!)
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                HStack {
                    ForEach(detail.types, id: \.self) { typing in
                        Text("\(typing.type.name)")
                    }
                }
            } else {
                ProgressView()
            }
        }
        .task {
            await viewModel.fetchDetails(url: url)
        }
    }
}
