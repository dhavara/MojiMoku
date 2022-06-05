//
//  Row.swift
//  MojiMoku
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct FavRow: View {
    var animeChar: AnimeCharData
    
    var body: some View {
        HStack(alignment: .bottom) {
            RoundedCorners(color: .purple, tl: 30, tr: 0, bl: 0, br: 30)
                .frame(maxWidth: 4.2, maxHeight: 1)
                .scaleEffect(60)
                .offset(x: 170, y: -20)
            
            CircleImage(image: AsyncImage(url: URL(string: animeChar.character_image)))
                .frame(width: 90, height: 90)
                .scaleEffect(0.4)
                .offset(x: -3, y: 5)
            
            VStack(alignment: .leading) {
                Text(animeChar.name)
                    .bold()
                    .lineLimit(1)
                    .frame(maxWidth: 180, minHeight: 25, alignment: .init(horizontal: .leading, vertical: .center))
                    .offset(x: -5)
                
                Text(animeChar.origin)
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .frame(maxWidth: 195, minHeight: 25, alignment: .init(horizontal: .leading, vertical: .center))
                    .offset(x: -15)
            }
            .fixedSize(horizontal: false, vertical: true)
        }
        .frame(maxWidth: 300, maxHeight: 90, alignment: .init(horizontal: .leading, vertical: .bottom))
        .cornerRadius(10)
    }
}

struct FavRow_Previews: PreviewProvider {
    static var animeChar = ModelData().animeChars
    static var previews: some View {
        Group{
            FavRow(animeChar: animeChar[0])
            FavRow(animeChar: animeChar[10])
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
