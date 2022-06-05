//
//  List.swift
//  MojiMoku
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct FavList: View {
    @EnvironmentObject var modelData: ModelData
    var filteredAnimeChar: [AnimeCharData] { modelData.animeChars.filter { animeChar in
        (animeChar.favorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredAnimeChar) { animeChar in
                    NavigationLink(
                        destination: FavDetails(animeChar: animeChar)
                    )
                    {
                        FavRow(animeChar: animeChar)
                    }
                    .padding(.horizontal)
                    .scaleEffect(1.2)
                }
            }
            .navigationTitle("Favorite Characters")
        }
    }
}

struct FavList_Previews: PreviewProvider {
    static var previews: some View {
        FavList()
            .environmentObject(ModelData())
    }
}
