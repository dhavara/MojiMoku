//
//  HomeRow.swift
//  MojiMoku
//
//  Created by Macbook Pro on 31/05/22.
//

import SwiftUI

struct HomeRow: View {
    var category: String
    var items: [AnimeCharData]
    
    var body: some View {
        VStack {
            Text(category)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0){
                    ForEach(items) { animeCharacter in NavigationLink (
                            destination: FavDetails(animeChar: animeCharacter)
                        )
                        {
                            HomeItem(animeChar: animeCharacter)
                        }
                
                    .frame(minWidth: 220, minHeight: 300, maxHeight: 300)
                    }
                }
            }
            .frame(minHeight: 300, maxHeight: 300)
        }
    }
}

struct HomeRow_Previews: PreviewProvider {
    static var animeChars = ModelData().animeChars
    
    static var previews: some View {
        HomeRow(
            category: animeChars[0].category.rawValue,
            items: Array(animeChars.prefix(6))
        )
    }
}
