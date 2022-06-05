//
//  HomeItem.swift
//  MojiMoku
//
//  Created by Macbook Pro on 31/05/22.
//

import SwiftUI

struct HomeItem: View {
    var animeChar: AnimeCharData
    
    var body: some View {
        VStack{
            CircleImage(image: AsyncImage(url: URL(string: animeChar.character_image)))
            VStack {
                Text(animeChar.name)
                    .foregroundColor(.primary)
                .font(.title2)
            
            Text(animeChar.origin)
                .foregroundColor(.primary)
                .font(.caption)
            }
        }
    }
}

struct HomeItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeItem(animeChar: ModelData().animeChars[9])
    }
}
